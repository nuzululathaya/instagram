//
//  ViewController.swift
//  Instagram
//
//  Created by Nuzulul Athaya on 08/06/22.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    
    lazy var imageLogo: UIImageView = {
        var imageLogo = UIImageView()
        imageLogo.contentMode = .scaleAspectFit
        imageLogo.sd_setImage(with: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1200px-Instagram_logo.svg.png"), placeholderImage: nil)
        return imageLogo
    }()
    
    lazy var emailTextField: UITextField = {
        var emailTextField = UITextField()
        emailTextField.placeholder = "Phone, number, email or username"
        emailTextField.borderStyle = .roundedRect
        emailTextField.backgroundColor = .secondarySystemBackground
        emailTextField.addTarget(self, action: #selector(emailChange), for: .editingChanged)
        return emailTextField
        
    }()
    
    lazy var passwordTextField: UITextField = {
        var passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = .secondarySystemBackground
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
        
    }()
    
    
    lazy var loginButton: UIButton = {
        var titleColor: UIColor = .white
        var loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemBlue
        loginButton.layer.cornerRadius = 8
        loginButton.setTitleColor(titleColor, for: .normal)
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        return loginButton
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        
        view.addSubview(imageLogo)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
      
        
        setUpConstraint()

    }
    
    @objc func emailChange(textField: UITextField){
        print(textField.text)
    }
    
    @objc func login(){
        let tb = TabBarInstagram()
        navigationController?.pushViewController(tb, animated: true)
        navigationController?.isNavigationBarHidden = true
        
    }
    
    func setUpConstraint() {
        
        //image
        imageLogo.translatesAutoresizingMaskIntoConstraints = false
        imageLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 220).isActive = true
        imageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageLogo.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        //email
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: imageLogo.bottomAnchor, constant: 40).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        
        //password
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        
        //loginbutton
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
}
