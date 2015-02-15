//
//  LoginViewController.swift
//  LoginProject
//
//  Created by Kenneth Wilcox on 2/15/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "loginToCreateAccountSegue" {
      var createAccountVC = segue.destinationViewController as CreateAccountViewController
      createAccountVC.delegate = self
    }
  }
  
  @IBAction func loginButtonPressed(sender: UIButton) {
    self.performSegueWithIdentifier("loginToMainSegue", sender: self)
  }
  
  @IBAction func createAccountButtonPressed(sender: UIButton) {
    self.performSegueWithIdentifier("loginToCreateAccountSegue", sender: self)
  }
}

// MARK: CreatedAccountViewControllerDelegate
extension LoginViewController: CreateAccountViewControllerDelegate {
  func accountCreated() {
    self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
  }
}