//
//  ViewController.swift
//  PointFreeApp
//
//  Created by Brandon Williams on 6/1/18.
//  Copyright © 2018 Point-Free. All rights reserved.
//

import UIKit
import AppStuff

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    let vc = MyViewController()
    vc.view.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
    self.view.addSubview(vc.view)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

