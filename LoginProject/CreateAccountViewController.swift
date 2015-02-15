//
//  CreateAccountViewController.swift
//  LoginProject
//
//  Created by Kenneth Wilcox on 2/15/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit

protocol CreateAccountViewControllerDelegate {
  func accountCreated()
}

class CreateAccountViewController: UIViewController {
  
  @IBOutlet weak var chooseUsernameTextField: UITextField!
  @IBOutlet weak var choosePasswordTextField: UITextField!
  @IBOutlet weak var confirmPasswordTextField: UITextField!
  var delegate: CreateAccountViewControllerDelegate?
  
  let kUserNameKey = "userNameKey"
  let kPasswordKey = "passwordKey"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func createAccountButtonPressed(sender: UIButton) {
    if choosePasswordTextField.text == confirmPasswordTextField.text && !choosePasswordTextField.text.isEmpty {
      let defaults = NSUserDefaults.standardUserDefaults()
      defaults.setObject(self.chooseUsernameTextField.text, forKey: kUserNameKey)
      defaults.setObject(self.choosePasswordTextField.text, forKey: kPasswordKey)
      defaults.synchronize()
      
      self.dismissViewControllerAnimated(true, completion: nil)
      delegate?.accountCreated()
    }
  }
  
  @IBAction func cancelButtonPressed(sender: UIButton) {
    self.dismissViewControllerAnimated(true, completion: nil)
  }
}
