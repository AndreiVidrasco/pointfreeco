default: bootstrap

SWIFT := $(if $(shell command -v xcrun 2> /dev/null),xcrun swift,swift)

bootstrap:
	@if test -e Sources/Models/Transcripts/.git; \
		then \
			$(MAKE) bootstrap-private; \
		else \
			$(MAKE) bootstrap-oss; \
		fi

bootstrap-oss:
	@echo "  ⚠️  Bootstrapping open-source Point-Free..."
	@set -e; set -o pipefail; $(MAKE) .pf-env | sed "s/make\[1\]: \`\.pf-env'/\  ✅ $$(tput bold).pf-env$$(tput sgr0)/"
	@$(MAKE) xcodeproj-oss
	@$(MAKE) install-mm
	@echo "  ✅ Bootstrapped! Opening Xcode..."
	@open -g PointFree.xcworkspace

bootstrap-oss-lite:
	@echo "  ⚠️  Bootstrapping open-source Point-Free (lite)..."
	@$(MAKE) xcodeproj-oss
	@echo "  ✅ Bootstrapped! Opening Xcode..."
	@open -g PointFree.xcworkspace

bootstrap-private:
	@echo "  👀 Bootstrapping Point-Free (private)..."
	@$(MAKE) xcodeproj
	@$(MAKE) install-mm
	@echo "  ✅ Bootstrapped! Opening Xcode..."
	@open -g PointFree.xcworkspace

/usr/local/bin/stripe:
	brew install stripe/stripe-cli/stripe

stripe-listen: /usr/local/bin/stripe
	stripe listen \
		--events invoice.payment_failed,invoice.payment_succeeded,customer.subscription.deleted \
		--forward-to localhost:8080/webhooks/stripe \
		--latest \
		--print-json

uninstall: uninstall-mm db-drop

install-mm:
	@if test -d Sources/Models/Transcripts/.git; \
		then \
			echo "  ⚠️  Installing module maps into SDK path..."; \
		else \
			echo "$$MODULE_MAP_WARNING"; \
		fi
	@$(MAKE) install-mm-commoncrypto || (echo "$$MODULE_MAP_ERROR" && exit 1)
	@$(MAKE) install-mm-cmark
	@$(MAKE) install-mm-postgres
	@echo "  ✅ Module maps installed!"

install-mm-cmark: $(CCMARK_MODULE_MAP_PATH)
	@$(SUDO) mkdir -p "$(CCMARK_PATH)"
	@echo "$$CCMARK_MODULE_MAP" | sudo tee "$(CCMARK_MODULE_MAP_PATH)" > /dev/null

install-mm-commoncrypto: $(COMMON_CRYPTO_MODULE_MAP_PATH)
	@$(SUDO) mkdir -p "$(COMMON_CRYPTO_PATH)"
	@echo "$$COMMON_CRYPTO_MODULE_MAP" | sudo tee "$(COMMON_CRYPTO_MODULE_MAP_PATH)" > /dev/null

install-mm-postgres: $(POSTGRES_MODULE_MAP_PATH)
	@$(SUDO) mkdir -p "$(POSTGRES_PATH)"
	@echo "$$POSTGRES_MODULE_MAP" | $(SUDO) tee "$(POSTGRES_PATH)/module.map" > /dev/null
	@echo "$$POSTGRES_SHIM_H" | $(SUDO) tee "$(POSTGRES_PATH)/shim.h" > /dev/null

uninstall-mm:
	@echo "  ⚠️  Uninstalling module maps from SDK path..."
	@$(SUDO) rm -r "$(COMMON_CRYPTO_PATH)" || (echo "$$MODULE_MAP_ERROR_UNINSTALL")
	@$(SUDO) rm -r "$(CCMARK_PATH)"
	@$(SUDO) rm -r "$(POSTGRES_PATH)"
	@echo "  ✅ Module maps uninstalled!"

check-dependencies: check-cmark check-postgres

check-cmark:
	@echo "  ⚠️  Checking on cmark..."
	@command -v cmark >/dev/null || (echo "$$CMARK_ERROR" && exit 1)
	@echo "  ✅ cmark is installed!"

check-postgres:
	@echo "  ⚠️  Checking on PostgreSQL..."
	@command -v psql >/dev/null || (echo "$$POSTGRES_ERROR_INSTALL" && exit 1)
	@psql template1 --command '' 2>/dev/null || \
		(echo "$$POSTGRES_ERROR_RUNNING" && exit 1)
	@echo "  ✅ PostgreSQL is up and running!"
	@psql --dbname=pointfreeco_development --username=pointfreeco --command '' \
		2>/dev/null || (echo "$$POSTGRES_WARNING" && $(MAKE) --quiet db)

db:
	createuser --superuser pointfreeco || true
	createdb --owner pointfreeco pointfreeco_development || true
	createdb --owner pointfreeco pointfreeco_test || true

db-drop:
	dropdb --username pointfreeco pointfreeco_development || true
	dropdb --username pointfreeco pointfreeco_test || true
	dropuser pointfreeco || true

xcodeproj-oss: check-dependencies
	@echo "  ⚠️  Generating \033[1mPointFree.xcodeproj\033[0m..."
	@$(SWIFT) package generate-xcodeproj --xcconfig-overrides=OSS.xcconfig >/dev/null \
		&& echo "  ✅ Generated!" \
		|| (echo "  🛑 Failed!" && exit 1)

.pf-env: .pf-env.example
	@echo "  ⚠️  Preparing local configuration..."
	@test -f .pf-env && echo "$$DOTENV_ERROR" && exit 1 || true
	@cp .pf-env.example .pf-env
	@echo "  ✅ \033[1m.pf-env\033[0m file copied!"

SDK_PATH = $(shell xcrun --show-sdk-path 2>/dev/null)
FRAMEWORKS_PATH = $(SDK_PATH)/System/Library/Frameworks

CCMARK_PATH = $(FRAMEWORKS_PATH)/Ccmark.framework
CCMARK_MODULE_MAP_PATH = $(CCMARK_PATH)/module.map
define CCMARK_MODULE_MAP
module Ccmark [system] {
  header "/usr/local/Cellar/cmark/0.29.0/include/cmark.h"
  export *
}
endef
export CCMARK_MODULE_MAP

COMMON_CRYPTO_PATH = $(FRAMEWORKS_PATH)/CommonCrypto.framework
COMMON_CRYPTO_MODULE_MAP_PATH = $(COMMON_CRYPTO_PATH)/module.map
define COMMON_CRYPTO_MODULE_MAP
module CommonCrypto [system] {
  header "$(SDK_PATH)/usr/include/CommonCrypto/CommonCrypto.h"
  header "$(SDK_PATH)/usr/include/CommonCrypto/CommonRandom.h"
  export *
}
endef
export COMMON_CRYPTO_MODULE_MAP

POSTGRES_PATH = $(FRAMEWORKS_PATH)/CPostgreSQL.framework
define POSTGRES_MODULE_MAP
module CPostgreSQL [system] {
  header "shim.h"
  link "pq"
  export *
}
endef
export POSTGRES_MODULE_MAP

define POSTGRES_SHIM_H
#ifndef __CPOSTGRESQL_SHIM_H__
#define __CPOSTGRESQL_SHIM_H__

#include <libpq-fe.h>
#include <postgres_ext.h>

#endif
endef
export POSTGRES_SHIM_H

define MODULE_MAP_WARNING
  ⚠️  Point-Free installs module maps into your Xcode SDK path to enable
     playground support. If you don't want to run playgrounds, bootstrap with:

       $$ \033[1mmake\033[0m \033[38;5;66mbootstrap-oss-lite\033[0m

     You can undo this at any time by running the following:

       $$ \033[1mmake\033[0m \033[38;5;66muninstall-mm\033[0m

endef
export MODULE_MAP_WARNING

define MODULE_MAP_ERROR
  🛑 Couldn't install module maps! Point-Free requires \033[1msudo\033[0m access to install
     module maps for playground support.

endef
export MODULE_MAP_ERROR

define MODULE_MAP_ERROR_UNINSTALL
  🛑 Couldn't uninstall module maps! Point-Free requires \033[1msudo\033[0m access to
     uninstall its module maps.

endef
export MODULE_MAP_ERROR_UNINSTALL

define CMARK_ERROR
  🛑 cmark not found! Point-Free uses cmark to render Markdown for transcripts
     and blog posts.

     You can install it with your favorite package manager, e.g.:

       $$ \033[1mbrew\033[0m \033[38;5;66minstall cmark\033[0m

endef
export CMARK_ERROR

define DOTENV_ERROR
  🛑 Local configuration already exists at \033[1m.pf-env\033[0m!

     Please reset the file:

       $$ \033[1mrm\033[0m \033[38;5;66m.pf-env\033[0m

     Or manually edit it:

       $$ \033[1m$$EDITOR\033[0m \033[38;5;66minstall cmark\033[0m

endef
export DOTENV_ERROR

define POSTGRES_ERROR_INSTALL
  🛑 PostgreSQL not found! Point-Free uses PostgreSQL as its database.

     Install it with your favorite package manager, e.g.:

       $$ \033[1mbrew\033[0m \033[38;5;66minstall postgresql\033[0m

endef
export POSTGRES_ERROR_INSTALL

define POSTGRES_ERROR_RUNNING
  🛑 PostgreSQL isn't running! Point-Free uses PostgreSQL as its database.

     Make sure it's spawned by running, e.g.:

       $$ \033[1mpg_ctl\033[0m \033[38;5;66m-D /usr/local/var/postgres start\033[0m

endef
export POSTGRES_ERROR_RUNNING

define POSTGRES_WARNING
  ⚠️  Local databases aren't configured! Creating pointfreeco user/databases...

     Reset at any time with:

       $$ \033[1mmake\033[0m \033[38;5;66mdb-drop\033[0m

endef
export POSTGRES_WARNING

# colortheme

COLOR_THEMES_PATH = $(HOME)/Library/Developer/Xcode/UserData/FontAndColorThemes
COLOR_THEME = $(COLOR_THEMES_PATH)/Point-Free.xccolortheme

colortheme:
	@echo "  ⚠️  Installing \033[1mPoint-Free.xcolortheme\033[0m..."
	@mkdir -p $(COLOR_THEMES_PATH)
	@cp -r .PointFree.xccolortheme $(COLOR_THEME)
	@echo "  ✅ Installed!"

uninstall-colortheme:
	rm -r $(COLOR_THEME)

# private

xcodeproj: check-dependencies
	@echo "  ⚠️  Generating \033[1mPointFree.xcodeproj\033[0m..."
	@$(SWIFT) package generate-xcodeproj --xcconfig-overrides=Development.xcconfig >/dev/null
	@echo "  ✅ Generated!"

submodules:
	@echo "  ⚠️  Fetching transcripts..."
	@git submodule sync --recursive >/dev/null
	@git submodule update --init --recursive >/dev/null
	@echo "  ✅ Fetched!"

linux-start:
	docker-compose up --build

env-local:
	heroku config --json -a pointfreeco-local > .pf-env

deploy-local:
	@heroku container:login
	@heroku container:push web -a pointfreeco-local
	@heroku container:release web -a pointfreeco-local

deploy-production:
	@git fetch origin
	@test "$$(git status --porcelain)" = "" \
		|| (echo "  🛑 Can't deploy while the working tree is dirty" && exit 1)
	@test "$$(git rev-parse @)" = "$$(git rev-parse origin/master)" \
		&& test "$$(git rev-parse --abbrev-ref HEAD)" = "master" \
		|| (echo "  🛑 Must deploy from an up-to-date origin/master" && exit 1)
	@heroku container:login
	@heroku container:push web -a pointfreeco
	@heroku container:release web -a pointfreeco

test-linux:
	docker-compose build && docker-compose run \
		--entrypoint "swift test --enable-test-discovery --skip-build -Xswiftc -D -Xswiftc OSS" web

test-oss: db
	@$(SWIFT) test \
		--enable-pubgrub-resolver \
		--enable-test-discovery \
		-Xswiftc "-D" -Xswiftc "OSS"

scorch-docker:
	@docker container ls --all --quiet \
		| xargs docker container stop \
		&& docker system prune --all --force --volumes

clean-snapshots:
	find Tests -name "__Snapshots__" | xargs -n1 rm -fr

SUDO = sudo --prompt=$(SUDO_PROMPT)
SUDO_PROMPT = "  🔒 Please enter your password: "

.PHONY: bootstrap-oss \
	bootstrap-oss-lite \
	bootstrap \
	install-mm \
	install-mm-cmark \
	install-mm-commoncrypto \
	install-mm-postgres \
	uninstall \
	uninstall-mm \
	uninstall-colortheme \
	check-dependencies \
	check-cmark \
	check-postgres \
	db \
	db-drop \
	xcodeproj-oss \
	xcodeproj \
	submodules \
	env-local \
	deploy-local \
	deploy-production \
	test-oss
