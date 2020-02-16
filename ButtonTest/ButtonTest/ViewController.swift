//
//  ViewController.swift
//  ButtonTest
//
//  Created by user165111 on 1/29/20.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

internal class ViewController : UIViewController {
    
    var loginButton: UIButton!
    var nameTextField: UITextField!
    var passwordTextField: UITextField!
    
    override internal func viewDidLoad() {
        //code
        super.viewDidLoad()
        view.backgroundColor = .white
        
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        
        nameTextField = UITextField(frame: .zero)
        nameTextField.placeholder = "Login Name"
        nameTextField.borderStyle = .roundedRect
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameTextField)
        
        passwordTextField = UITextField(frame: .zero)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        constraintsInit()
        
    }
    
    func constraintsInit() {
        NSLayoutConstraint.activate([
          loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
          
          passwordTextField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),
          passwordTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
          passwordTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
          
          nameTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20),
          nameTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
          nameTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20)        ])
    }
    
    @objc func handleLoginTouchUpInside () {
        print("Login has been tapped")
        if nameTextField.isFirstResponder {
            nameTextField.resignFirstResponder()
        }
        if passwordTextField.isFirstResponder {
            passwordTextField.resignFirstResponder()
        }
    }
    
    @objc func clickButton () {
        let message: String = "Hello World!"
        let alertController: UIAlertController = UIAlertController(title: "", message: message, preferredStyle: UIAlertController.Style.alert)
        let alertAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    /*
    override internal func didReceiveMemoryWarning() {
        //code
    }*/
}
