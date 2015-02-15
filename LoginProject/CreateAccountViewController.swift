//
//  CreateAccountViewController.swift
//  LoginProject
//
//  Created by Kenneth Wilcox on 2/15/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
  
  @IBOutlet weak var chooseUsernameTextField: UITextField!
  @IBOutlet weak var choosePasswordTextField: UITextField!
  @IBOutlet weak var confirmPasswordTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func createAccountButtonPressed(sender: UIButton) {
  }
  
  @IBAction func cancelButtonPressed(sender: UIButton) {
  }
}
