#if !canImport(ObjectiveC)
import XCTest

extension AboutTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__AboutTests = [
        ("testAbout", testAbout),
    ]
}

extension AccountTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__AccountTests = [
        ("testAccount", testAccount),
        ("testAccount_InvoiceBilling", testAccount_InvoiceBilling),
        ("testAccount_WithExtraInvoiceInfo", testAccount_WithExtraInvoiceInfo),
        ("testAccountCanceledSubscription", testAccountCanceledSubscription),
        ("testAccountCancelingSubscription", testAccountCancelingSubscription),
        ("testAccountWithDiscount", testAccountWithDiscount),
        ("testAccountWithFlashError", testAccountWithFlashError),
        ("testAccountWithFlashNotice", testAccountWithFlashNotice),
        ("testAccountWithFlashWarning", testAccountWithFlashWarning),
        ("testAccountWithPastDue", testAccountWithPastDue),
        ("testEpisodeCredits_1Credit_1Chosen", testEpisodeCredits_1Credit_1Chosen),
        ("testEpisodeCredits_1Credit_NoneChosen", testEpisodeCredits_1Credit_NoneChosen),
        ("testTeam_AsTeammate", testTeam_AsTeammate),
        ("testTeam_NoRemainingSeats", testTeam_NoRemainingSeats),
        ("testTeam_OwnerIsNotSubscriber", testTeam_OwnerIsNotSubscriber),
    ]
}

extension ApiTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ApiTests = [
        ("testEpisode", testEpisode),
        ("testEpisode_NotFound", testEpisode_NotFound),
        ("testEpisodes", testEpisodes),
    ]
}

extension AppleDeveloperMerchantIdDomainAssociationTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__AppleDeveloperMerchantIdDomainAssociationTests = [
        ("testNotLoggedIn_IndividualMonthly", testNotLoggedIn_IndividualMonthly),
    ]
}

extension AtomFeedTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__AtomFeedTests = [
        ("testAtomFeed", testAtomFeed),
        ("testEpisodeFeed", testEpisodeFeed),
        ("testEpisodeFeed_WithRecentlyFreeEpisode", testEpisodeFeed_WithRecentlyFreeEpisode),
    ]
}

extension AuthTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__AuthTests = [
        ("testAuth", testAuth),
        ("testAuth_WithFetchAuthTokenBadVerificationCode", testAuth_WithFetchAuthTokenBadVerificationCode),
        ("testAuth_WithFetchAuthTokenBadVerificationCodeRedirect", testAuth_WithFetchAuthTokenBadVerificationCodeRedirect),
        ("testAuth_WithFetchAuthTokenFailure", testAuth_WithFetchAuthTokenFailure),
        ("testAuth_WithFetchUserFailure", testAuth_WithFetchUserFailure),
        ("testHome_LoggedIn", testHome_LoggedIn),
        ("testHome_LoggedOut", testHome_LoggedOut),
        ("testLogin", testLogin),
        ("testLogin_AlreadyLoggedIn", testLogin_AlreadyLoggedIn),
        ("testLoginWithRedirect", testLoginWithRedirect),
        ("testLogout", testLogout),
        ("testRegister", testRegister),
    ]
}

extension BlogTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__BlogTests = [
        ("testBlogAtomFeed", testBlogAtomFeed),
        ("testBlogAtomFeed_Unauthed", testBlogAtomFeed_Unauthed),
        ("testBlogIndex", testBlogIndex),
        ("testBlogIndex_WithLotsOfPosts", testBlogIndex_WithLotsOfPosts),
        ("testBlogShow", testBlogShow),
        ("testBlogShow_Unauthed", testBlogShow_Unauthed),
    ]
}

extension CancelTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__CancelTests = [
        ("testCancel", testCancel),
        ("testCancelCanceledSubscription", testCancelCanceledSubscription),
        ("testCancelCancelingSubscription", testCancelCancelingSubscription),
        ("testCancelEmail", testCancelEmail),
        ("testCancelLoggedOut", testCancelLoggedOut),
        ("testCancelNoSubscription", testCancelNoSubscription),
        ("testCancelStripeFailure", testCancelStripeFailure),
        ("testReactivate", testReactivate),
        ("testReactivateActiveSubscription", testReactivateActiveSubscription),
        ("testReactivateCanceledSubscription", testReactivateCanceledSubscription),
        ("testReactivateEmail", testReactivateEmail),
        ("testReactivateLoggedOut", testReactivateLoggedOut),
        ("testReactivateNoSubscription", testReactivateNoSubscription),
        ("testReactivateStripeFailure", testReactivateStripeFailure),
    ]
}

extension ChangeEmailConfirmationTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ChangeEmailConfirmationTests = [
        ("testChangedEmail", testChangedEmail),
        ("testChangeEmailConfirmationEmail", testChangeEmailConfirmationEmail),
    ]
}

extension ChangeTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ChangeTests = [
        ("testChangeRedirect", testChangeRedirect),
        ("testChangeUpdateAddSeatsIndividualPlan", testChangeUpdateAddSeatsIndividualPlan),
        ("testChangeUpdateAddSeatsTeamPlan", testChangeUpdateAddSeatsTeamPlan),
        ("testChangeUpdateDowngradeIndividualPlan", testChangeUpdateDowngradeIndividualPlan),
        ("testChangeUpdateDowngradeTeamPlan", testChangeUpdateDowngradeTeamPlan),
        ("testChangeUpdateRemoveSeats", testChangeUpdateRemoveSeats),
        ("testChangeUpdateRemoveSeatsInvalidNumber", testChangeUpdateRemoveSeatsInvalidNumber),
        ("testChangeUpdateUpgradeIndividualPlan", testChangeUpdateUpgradeIndividualPlan),
        ("testChangeUpdateUpgradeTeamPlan", testChangeUpdateUpgradeTeamPlan),
        ("testChangeUpgradeIndividualMonthlyToTeamYearly", testChangeUpgradeIndividualMonthlyToTeamYearly),
    ]
}

extension DiscountsTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DiscountsTests = [
        ("testDiscounts_LoggedIn_5DollarsOff_Forever", testDiscounts_LoggedIn_5DollarsOff_Forever),
        ("testDiscounts_LoggedIn_5DollarsOff_Once", testDiscounts_LoggedIn_5DollarsOff_Once),
        ("testDiscounts_LoggedIn_5DollarsOff_Repeating", testDiscounts_LoggedIn_5DollarsOff_Repeating),
        ("testDiscounts_LoggedIn_PercentOff_Forever", testDiscounts_LoggedIn_PercentOff_Forever),
        ("testDiscounts_LoggedIn_PercentOff_Once", testDiscounts_LoggedIn_PercentOff_Once),
        ("testDiscounts_LoggedIn_PercentOff_Repeating", testDiscounts_LoggedIn_PercentOff_Repeating),
        ("testDiscounts_LoggedOut", testDiscounts_LoggedOut),
    ]
}

extension EitherIOTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__EitherIOTests = [
        ("testRetry_Fails", testRetry_Fails),
        ("testRetry_MaxRetriesZero_Failure", testRetry_MaxRetriesZero_Failure),
        ("testRetry_MaxRetriesZero_Success", testRetry_MaxRetriesZero_Success),
        ("testRetry_Succeeds", testRetry_Succeeds),
    ]
}

extension EmailInviteTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__EmailInviteTests = [
        ("testEmailInvite", testEmailInvite),
        ("testInviteAcceptance", testInviteAcceptance),
    ]
}

extension EnterpriseTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__EnterpriseTests = [
        ("testAccceptInvitation_BadEmail", testAccceptInvitation_BadEmail),
        ("testAccceptInvitation_BadUserId", testAccceptInvitation_BadUserId),
        ("testAccceptInvitation_EmailDoesntMatchEnterpriseDomain", testAccceptInvitation_EmailDoesntMatchEnterpriseDomain),
        ("testAccceptInvitation_EnterpriseAccountDoesntExist", testAccceptInvitation_EnterpriseAccountDoesntExist),
        ("testAccceptInvitation_HappyPath", testAccceptInvitation_HappyPath),
        ("testAccceptInvitation_LoggedOut", testAccceptInvitation_LoggedOut),
        ("testAccceptInvitation_RequesterUserDoesntMatchAccepterUserId", testAccceptInvitation_RequesterUserDoesntMatchAccepterUserId),
        ("testLanding_AlreadySubscribedToEnterprise", testLanding_AlreadySubscribedToEnterprise),
        ("testLanding_LoggedOut", testLanding_LoggedOut),
        ("testLanding_NonExistentEnterpriseAccount", testLanding_NonExistentEnterpriseAccount),
    ]
}

extension EnvVarTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__EnvVarTests = [
        ("testDecoding", testDecoding),
    ]
}

extension EnvironmentTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__EnvironmentTests = [
        ("testDefault", testDefault),
    ]
}

extension EpisodePageTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__EpisodePageTests = [
        ("test_permission", test_permission),
        ("testEpisodeCredit_PrivateEpisode_NonSubscriber_HasCredits", testEpisodeCredit_PrivateEpisode_NonSubscriber_HasCredits),
        ("testEpisodeCredit_PrivateEpisode_NonSubscriber_UsedCredit", testEpisodeCredit_PrivateEpisode_NonSubscriber_UsedCredit),
        ("testEpisodeCredit_PublicEpisode_NonSubscriber_UsedCredit", testEpisodeCredit_PublicEpisode_NonSubscriber_UsedCredit),
        ("testEpisodeNotFound", testEpisodeNotFound),
        ("testEpisodePage", testEpisodePage),
        ("testEpisodePage_ExercisesAndReferences", testEpisodePage_ExercisesAndReferences),
        ("testEpisodePageSubscriber", testEpisodePageSubscriber),
        ("testFreeEpisodePage", testFreeEpisodePage),
        ("testFreeEpisodePageSubscriber", testFreeEpisodePageSubscriber),
        ("testRedeemEpisodeCredit_AlreadyCredited", testRedeemEpisodeCredit_AlreadyCredited),
        ("testRedeemEpisodeCredit_HappyPath", testRedeemEpisodeCredit_HappyPath),
        ("testRedeemEpisodeCredit_NotEnoughCredits", testRedeemEpisodeCredit_NotEnoughCredits),
        ("testRedeemEpisodeCredit_PublicEpisode", testRedeemEpisodeCredit_PublicEpisode),
    ]
}

extension FreeEpisodeEmailTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__FreeEpisodeEmailTests = [
        ("testFreeEpisodeEmail", testFreeEpisodeEmail),
    ]
}

extension GhostTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__GhostTests = [
        ("testEndGhosting_HappyPath", testEndGhosting_HappyPath),
        ("testStartGhosting_HappyPath", testStartGhosting_HappyPath),
        ("testStartGhosting_InvalidGhostee", testStartGhosting_InvalidGhostee),
        ("testStartGhosting_NonAdmin", testStartGhosting_NonAdmin),
    ]
}

extension HomeTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__HomeTests = [
        ("testEpisodesIndex", testEpisodesIndex),
        ("testHomepage_LoggedOut", testHomepage_LoggedOut),
        ("testHomepage_Subscriber", testHomepage_Subscriber),
    ]
}

extension HtmlCssInlinerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__HtmlCssInlinerTests = [
        ("testHtmlCssInliner", testHtmlCssInliner),
    ]
}

extension InviteTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__InviteTests = [
        ("testAcceptInvitation_HappyPath", testAcceptInvitation_HappyPath),
        ("testAcceptInvitation_InviterHasCancelingStripeSubscription", testAcceptInvitation_InviterHasCancelingStripeSubscription),
        ("testAcceptInvitation_InviterHasInactiveStripeSubscription", testAcceptInvitation_InviterHasInactiveStripeSubscription),
        ("testAcceptInvitation_InviterIsNotSubscriber", testAcceptInvitation_InviterIsNotSubscriber),
        ("testAddTeammate", testAddTeammate),
        ("testResendInvite_CurrentUserIsNotInviter", testResendInvite_CurrentUserIsNotInviter),
        ("testResendInvite_HappyPath", testResendInvite_HappyPath),
        ("testRevokeInvite_CurrentUserIsNotInviter", testRevokeInvite_CurrentUserIsNotInviter),
        ("testRevokeInvite_HappyPath", testRevokeInvite_HappyPath),
        ("testShowInvite_LoggedIn_NonSubscriber", testShowInvite_LoggedIn_NonSubscriber),
        ("testShowInvite_LoggedIn_Subscriber", testShowInvite_LoggedIn_Subscriber),
        ("testShowInvite_LoggedOut", testShowInvite_LoggedOut),
    ]
}

extension InvoicesTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__InvoicesTests = [
        ("testInvoices", testInvoices),
    ]
}

extension MetaLayoutTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__MetaLayoutTests = [
        ("testMetaTagsWithStyleTag", testMetaTagsWithStyleTag),
    ]
}

extension MinimalNavViewTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__MinimalNavViewTests = [
        ("testNav_Html", testNav_Html),
        ("testNav_Screenshots", testNav_Screenshots),
    ]
}

extension NewBlogPostEmailTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__NewBlogPostEmailTests = [
        ("testNewBlogPostEmail_Announcements_NonSubscriber", testNewBlogPostEmail_Announcements_NonSubscriber),
        ("testNewBlogPostEmail_Announcements_Subscriber", testNewBlogPostEmail_Announcements_Subscriber),
        ("testNewBlogPostEmail_NoAnnouncements_NonSubscriber", testNewBlogPostEmail_NoAnnouncements_NonSubscriber),
        ("testNewBlogPostEmail_NoAnnouncements_Subscriber", testNewBlogPostEmail_NoAnnouncements_Subscriber),
        ("testNewBlogPostEmail_NoCoverImage", testNewBlogPostEmail_NoCoverImage),
        ("testNewBlogPostRoute", testNewBlogPostRoute),
    ]
}

extension NewEpisodeEmailTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__NewEpisodeEmailTests = [
        ("testNewEpisodeEmail_Announcement_NonSubscriber", testNewEpisodeEmail_Announcement_NonSubscriber),
        ("testNewEpisodeEmail_Announcement_Subscriber", testNewEpisodeEmail_Announcement_Subscriber),
        ("testNewEpisodeEmail_FreeEpisode_NonSubscriber", testNewEpisodeEmail_FreeEpisode_NonSubscriber),
        ("testNewEpisodeEmail_Subscriber", testNewEpisodeEmail_Subscriber),
    ]
}

extension NewslettersTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__NewslettersTests = [
        ("testExpressUnsubscribe", testExpressUnsubscribe),
        ("testExpressUnsubscribeReply", testExpressUnsubscribeReply),
        ("testExpressUnsubscribeReply_IncorrectSignature", testExpressUnsubscribeReply_IncorrectSignature),
        ("testExpressUnsubscribeReply_UnknownNewsletter", testExpressUnsubscribeReply_UnknownNewsletter),
    ]
}

extension NotFoundMiddlewareTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__NotFoundMiddlewareTests = [
        ("testNotFound", testNotFound),
        ("testNotFound_LoggedIn", testNotFound_LoggedIn),
    ]
}

extension PaymentInfoTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__PaymentInfoTests = [
        ("testInvoiceBilling", testInvoiceBilling),
        ("testRender", testRender),
    ]
}

extension PricingLandingTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__PricingLandingTests = [
        ("testLanding_LoggedIn_ActiveSubscriber", testLanding_LoggedIn_ActiveSubscriber),
        ("testLanding_LoggedIn_InactiveSubscriber", testLanding_LoggedIn_InactiveSubscriber),
        ("testLanding_LoggedOut", testLanding_LoggedOut),
    ]
}

extension PrivacyTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__PrivacyTests = [
        ("testPrivacy", testPrivacy),
    ]
}

extension PrivateRssTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__PrivateRssTests = [
        ("testFeed_Authenticated_InActiveSubscriber", testFeed_Authenticated_InActiveSubscriber),
        ("testFeed_Authenticated_NonSubscriber", testFeed_Authenticated_NonSubscriber),
        ("testFeed_Authenticated_Subscriber_Monthly", testFeed_Authenticated_Subscriber_Monthly),
        ("testFeed_Authenticated_Subscriber_Yearly", testFeed_Authenticated_Subscriber_Yearly),
        ("testFeed_BadSalt", testFeed_BadSalt),
        ("testFeed_BadSalt_InvalidUserAgent", testFeed_BadSalt_InvalidUserAgent),
        ("testFeed_InvalidUserAgent", testFeed_InvalidUserAgent),
    ]
}

extension RegistrationEmailTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__RegistrationEmailTests = [
        ("testRegistrationEmail", testRegistrationEmail),
    ]
}

extension SessionTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SessionTests = [
        ("testDecodable", testDecodable),
        ("testEncodable", testEncodable),
    ]
}

extension SiteMiddlewareTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SiteMiddlewareTests = [
        ("testWithHttps", testWithHttps),
        ("testWithoutHeroku", testWithoutHeroku),
        ("testWithoutWWW", testWithoutWWW),
        ("testWithWWW", testWithWWW),
    ]
}

extension StripeWebhooksTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__StripeWebhooksTests = [
        ("testDecoding", testDecoding),
        ("testInvalidHook", testInvalidHook),
        ("testNoInvoiceSubscriptionId", testNoInvoiceSubscriptionId),
        ("testNoInvoiceSubscriptionId_AndNoLineItemSubscriptionId", testNoInvoiceSubscriptionId_AndNoLineItemSubscriptionId),
        ("testPastDueEmail", testPastDueEmail),
        ("testStaleHook", testStaleHook),
        ("testValidHook", testValidHook),
    ]
}

extension SubscribeTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SubscribeTests = [
        ("testCoupon_Individual", testCoupon_Individual),
        ("testCoupon_Team", testCoupon_Team),
        ("testCouponFailure_Individual", testCouponFailure_Individual),
        ("testCreateCustomerFailure", testCreateCustomerFailure),
        ("testCreateDatabaseSubscriptionFailure", testCreateDatabaseSubscriptionFailure),
        ("testCreateStripeSubscriptionFailure", testCreateStripeSubscriptionFailure),
        ("testCreateStripeSubscriptionFailure_TeamAndMonthly", testCreateStripeSubscriptionFailure_TeamAndMonthly),
        ("testCreateStripeSubscriptionFailure_TeamAndMonthly_TooManyEmails", testCreateStripeSubscriptionFailure_TeamAndMonthly_TooManyEmails),
        ("testCurrentSubscribers", testCurrentSubscribers),
        ("testHappyPath", testHappyPath),
        ("testHappyPath_Team", testHappyPath_Team),
        ("testHappyPath_Team_OwnerIsNotTakingSeat", testHappyPath_Team_OwnerIsNotTakingSeat),
        ("testInvalidQuantity", testInvalidQuantity),
        ("testNotLoggedIn_IndividualMonthly", testNotLoggedIn_IndividualMonthly),
        ("testNotLoggedIn_IndividualYearly", testNotLoggedIn_IndividualYearly),
        ("testNotLoggedIn_Team", testNotLoggedIn_Team),
    ]
}

extension SubscriptionConfirmationTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SubscriptionConfirmationTests = [
        ("testPersonal_LoggedIn", testPersonal_LoggedIn),
        ("testPersonal_LoggedIn_ActiveSubscriber", testPersonal_LoggedIn_ActiveSubscriber),
        ("testPersonal_LoggedIn_SwitchToMonthly", testPersonal_LoggedIn_SwitchToMonthly),
        ("testPersonal_LoggedIn_WithDiscount", testPersonal_LoggedIn_WithDiscount),
        ("testPersonal_LoggedOut", testPersonal_LoggedOut),
        ("testTeam_LoggedIn", testTeam_LoggedIn),
        ("testTeam_LoggedIn_AddTeamMember", testTeam_LoggedIn_AddTeamMember),
        ("testTeam_LoggedIn_RemoveOwnerFromTeam", testTeam_LoggedIn_RemoveOwnerFromTeam),
        ("testTeam_LoggedIn_SwitchToMonthly", testTeam_LoggedIn_SwitchToMonthly),
        ("testTeam_LoggedIn_WithDefaults", testTeam_LoggedIn_WithDefaults),
        ("testTeam_LoggedIn_WithDefaults_OwnerIsNotTakingSeat", testTeam_LoggedIn_WithDefaults_OwnerIsNotTakingSeat),
    ]
}

extension TeamEmailsTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__TeamEmailsTests = [
        ("testTeammateRemovedEmailView", testTeammateRemovedEmailView),
        ("testYouHaveBeenRemovedEmailView", testYouHaveBeenRemovedEmailView),
    ]
}

extension UpdateProfileTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__UpdateProfileTests = [
        ("testUpdateEmailSettings", testUpdateEmailSettings),
        ("testUpdateExtraInvoiceInfo", testUpdateExtraInvoiceInfo),
        ("testUpdateNameAndEmail", testUpdateNameAndEmail),
    ]
}

extension WelcomeEmailTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__WelcomeEmailTests = [
        ("testEpisodeEmails", testEpisodeEmails),
        ("testIncrementEpisodeCredits", testIncrementEpisodeCredits),
        ("testWelcomeEmail1", testWelcomeEmail1),
        ("testWelcomeEmail2", testWelcomeEmail2),
        ("testWelcomeEmail3", testWelcomeEmail3),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(AboutTests.__allTests__AboutTests),
        testCase(AccountTests.__allTests__AccountTests),
        testCase(ApiTests.__allTests__ApiTests),
        testCase(AppleDeveloperMerchantIdDomainAssociationTests.__allTests__AppleDeveloperMerchantIdDomainAssociationTests),
        testCase(AtomFeedTests.__allTests__AtomFeedTests),
        testCase(AuthTests.__allTests__AuthTests),
        testCase(BlogTests.__allTests__BlogTests),
        testCase(CancelTests.__allTests__CancelTests),
        testCase(ChangeEmailConfirmationTests.__allTests__ChangeEmailConfirmationTests),
        testCase(ChangeTests.__allTests__ChangeTests),
        testCase(DiscountsTests.__allTests__DiscountsTests),
        testCase(EitherIOTests.__allTests__EitherIOTests),
        testCase(EmailInviteTests.__allTests__EmailInviteTests),
        testCase(EnterpriseTests.__allTests__EnterpriseTests),
        testCase(EnvVarTests.__allTests__EnvVarTests),
        testCase(EnvironmentTests.__allTests__EnvironmentTests),
        testCase(EpisodePageTests.__allTests__EpisodePageTests),
        testCase(FreeEpisodeEmailTests.__allTests__FreeEpisodeEmailTests),
        testCase(GhostTests.__allTests__GhostTests),
        testCase(HomeTests.__allTests__HomeTests),
        testCase(HtmlCssInlinerTests.__allTests__HtmlCssInlinerTests),
        testCase(InviteTests.__allTests__InviteTests),
        testCase(InvoicesTests.__allTests__InvoicesTests),
        testCase(MetaLayoutTests.__allTests__MetaLayoutTests),
        testCase(MinimalNavViewTests.__allTests__MinimalNavViewTests),
        testCase(NewBlogPostEmailTests.__allTests__NewBlogPostEmailTests),
        testCase(NewEpisodeEmailTests.__allTests__NewEpisodeEmailTests),
        testCase(NewslettersTests.__allTests__NewslettersTests),
        testCase(NotFoundMiddlewareTests.__allTests__NotFoundMiddlewareTests),
        testCase(PaymentInfoTests.__allTests__PaymentInfoTests),
        testCase(PricingLandingTests.__allTests__PricingLandingTests),
        testCase(PrivacyTests.__allTests__PrivacyTests),
        testCase(PrivateRssTests.__allTests__PrivateRssTests),
        testCase(RegistrationEmailTests.__allTests__RegistrationEmailTests),
        testCase(SessionTests.__allTests__SessionTests),
        testCase(SiteMiddlewareTests.__allTests__SiteMiddlewareTests),
        testCase(StripeWebhooksTests.__allTests__StripeWebhooksTests),
        testCase(SubscribeTests.__allTests__SubscribeTests),
        testCase(SubscriptionConfirmationTests.__allTests__SubscriptionConfirmationTests),
        testCase(TeamEmailsTests.__allTests__TeamEmailsTests),
        testCase(UpdateProfileTests.__allTests__UpdateProfileTests),
        testCase(WelcomeEmailTests.__allTests__WelcomeEmailTests),
    ]
}
#endif
