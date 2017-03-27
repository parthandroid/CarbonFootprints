//
//  ViewController.swift
//  CarbonFootprints
//
//  Created by parth on 3/27/17.
//  Copyright © 2017 parthanand.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    let carbonText : UITextView = {
    
        let text = UITextView()
        text.textColor = UIColor(white: 0.7, alpha: 1)
        text.backgroundColor = .clear
        text.textAlignment = .center
        text.text = "CarbonFootprints"
        text.font = UIFont.boldSystemFont(ofSize: 30)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    
    }()
    
    let leafImage: UIImageView = {
    
        let image = UIImageView(image: UIImage(named: "leaf"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    
    }()
    
    
    let username: UITextField = {
    
        let username = UITextField()
        username.translatesAutoresizingMaskIntoConstraints = false
        username.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSForegroundColorAttributeName : UIColor(white: 0.7, alpha: 0.7)])
        username.textColor = UIColor(white: 0.7, alpha: 0.7)
        
        return username
    
    }()
    
    let username_line: UIView = {
    
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor(white: 0.7, alpha: 0.7)
        return line
    
    }()
    
    let password: UITextField = {
        
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName : UIColor(white: 0.7, alpha: 0.7)])
        password.textColor = UIColor(white: 0.7, alpha: 0.7)
        
        return password
        
    }()
    
    let password_line: UIView = {
        
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor(white: 0.7, alpha: 0.7)
        return line
        
    }()
    
    let login: UIButton = {
    
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 5
        button.backgroundColor = .clear
        button.setTitle("Login to my account >", for: .normal)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)

        return button
        
    }()
    
    let createAccount: UIButton = {
    
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor(white: 0.8, alpha: 0.8), for: .normal)
        button.setTitle("New here? Create an Account", for: .normal)
        return button
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

    
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(blurEffectView)
        
        
        view.addSubview(carbonText)
        view.addSubview(leafImage)
        view.addSubview(username)
        view.addSubview(username_line)
        view.addSubview(password)
        view.addSubview(password_line)
        view.addSubview(login)
        view.addSubview(createAccount)
        
        
        carbonText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        carbonText.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        carbonText.widthAnchor.constraint(equalToConstant: 280).isActive = true
        carbonText.heightAnchor.constraint(equalToConstant: 70).isActive = true
    
        
        
        leafImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        leafImage.bottomAnchor.constraint(equalTo: carbonText.topAnchor, constant: -10).isActive = true
        leafImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        leafImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        username.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        username.topAnchor.constraint(equalTo: carbonText.bottomAnchor, constant: 40).isActive = true
        username.widthAnchor.constraint(equalTo: carbonText.widthAnchor, constant: -50).isActive = true
        username.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        username_line.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        username_line.topAnchor.constraint(equalTo: username.bottomAnchor).isActive = true
        username_line.widthAnchor.constraint(equalTo: username.widthAnchor).isActive = true
        username_line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        password.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        password.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 18).isActive = true
        password.widthAnchor.constraint(equalTo: carbonText.widthAnchor, constant: -50).isActive = true
        password.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        password_line.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        password_line.topAnchor.constraint(equalTo: password.bottomAnchor).isActive = true
        password_line.widthAnchor.constraint(equalTo: password.widthAnchor).isActive = true
        password_line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        login.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        login.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 23).isActive = true
        login.widthAnchor.constraint(equalTo: password.widthAnchor).isActive = true
        login.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        createAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        createAccount.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        createAccount.widthAnchor.constraint(equalToConstant: 280).isActive = true
        createAccount.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
    }
    
    func handleLogin(){
    
        present(SettingsViewController(), animated: true, completion: nil)

    
    }



func dismissKeyboard() {

    view.endEditing(true)
}




}

