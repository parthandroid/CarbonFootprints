//
//  SettingsViewController.swift
//  CarbonFootprints
//
//  Created by parth on 3/28/17.
//  Copyright © 2017 parthanand.com. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    let containerView: UIView = {
    
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 10
        view.backgroundColor = .white
        return view
    
    }()
    
    let emissionRate: UITextField = {
        
        let username = UITextField()
        username.translatesAutoresizingMaskIntoConstraints = false
        username.attributedPlaceholder = NSAttributedString(string: "CO2 emission rate?", attributes: [NSForegroundColorAttributeName : UIColor(white: 0.5, alpha: 0.7)])
        username.textColor = UIColor(white: 0.4, alpha: 0.7)
        
        return username
        
    }()
    
    let emissionRate_line: UIView = {
        
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor(white: 0.2, alpha: 0.7)
        return line
        
    }()
    
    let nextButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 5
        button.backgroundColor = .clear
        button.setTitle("Next >", for: .normal)
        button.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(blurEffectView)

        view.addSubview(containerView)
        view.addSubview(emissionRate)
        view.addSubview(emissionRate_line)
        view.addSubview(nextButton)
        

    
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50).isActive = true
        containerView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -400).isActive = true
        
        emissionRate.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        emissionRate.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        emissionRate.widthAnchor.constraint(equalTo: containerView.widthAnchor, constant: -120).isActive = true
        emissionRate.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        emissionRate_line.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        emissionRate_line.topAnchor.constraint(equalTo: emissionRate.bottomAnchor).isActive = true
        emissionRate_line.widthAnchor.constraint(equalTo: emissionRate.widthAnchor).isActive = true
        emissionRate_line.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.topAnchor.constraint(equalTo: emissionRate.bottomAnchor, constant: 35).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 90).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)

    
    }
    
    func dismissKeyboard() {
        
        view.endEditing(true)
    }
    
    func handleNext(){
    
        present(UINavigationController(rootViewController: MapsViewController()), animated: true, completion: nil)

        
    }


 

}
