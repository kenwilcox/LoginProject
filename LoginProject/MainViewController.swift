//
//  MainViewController.swift
//  LoginProject
//
//  Created by Kenneth Wilcox on 2/15/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  @IBOutlet weak var usernameLabel: UILabel!
  @IBOutlet weak var passwordLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    let defaults = NSUserDefaults.standardUserDefaults()
    usernameLabel.text = defaults.objectForKey(kUserNameKey) as? String
    passwordLabel.text = defaults.objectForKey(kPasswordKey) as? String
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}
