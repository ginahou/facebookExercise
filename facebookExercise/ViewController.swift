//
//  ViewController.swift
//  facebookExercise
//
//  Created by Chris Royer on 2/5/15.
//  Copyright (c) 2015 Chris Royer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
         loginButton.enabled = false
        loadingView.hidden = true
        
          //  enableLoginButton()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


//    func enableLoginButton () {
//        if (emailTextField.text.isEmpty && passwordTextField.text.isEmpty) {loginButton.enabled = false}
//        else {loginButton.enabled = true}
//    }
    
    
    @IBAction func emaiFieldlEditingChanged(sender: AnyObject) {
        if (emailTextField.text.isEmpty || passwordTextField.text.isEmpty) {loginButton.enabled = false}
        else {loginButton.enabled = true}
        
        
        
    }
    
    @IBAction func didPressLoginButton(sender: AnyObject) {
        loadingView.hidden = false
        loadingView.startAnimating()
        loginButton.selected = true
        
        
        delay(2, { () -> () in
            
            if (self.passwordTextField.text == "pw") {
                self.performSegueWithIdentifier("loginSegue", sender: nil)
                self.loginButton.enabled = true
                self.loadingView.stopAnimating()
            }
            else {
                var alertView = UIAlertView(title: "Alert", message: "Username an/or Password is incorrect", delegate: nil, cancelButtonTitle: "OK")
                alertView.show()
                self.passwordTextField.text = ""
                self.loginButton.selected = false
                self.loginButton.enabled = false
                self.loadingView.stopAnimating()
                self.loadingView.hidden = true
            }

            }
        )
    }
    
//    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
//        if (buttonIndex == 0) {
//            dismissViewControllerAnimated(true, completion: nil)
//        }
//    }
    
}

