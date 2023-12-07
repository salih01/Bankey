//
//  ViewController.swift
//  Bankey
//
//  Created by Salih on 20.11.2023.
//

import UIKit

class LoginViewController: UIViewController {

    let loginView = LoginView()
    let errorMessage = UILabel()
    let signInButton = UIButton(type: .system)
    
    var username: String? {
        return loginView.userNameTextField.text
    }
    var password: String? {
        return loginView.passwordTextField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }


}
extension LoginViewController {
    
    private func style(){
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Sign In Button
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.configuration = .filled()
        signInButton.layer.cornerRadius = 10
        signInButton.clipsToBounds = true
        signInButton.configuration?.imagePadding = 8 // for indicator spacing
        signInButton.setTitle("Sign In", for: [])
        signInButton.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
        
        // MARK: - error Label
        errorMessage.translatesAutoresizingMaskIntoConstraints = false
        errorMessage.textAlignment = .center
        errorMessage.textColor     = .systemRed
        errorMessage.numberOfLines = 0
        
        
    }
    private func layout(){
        view.addSubview(loginView)
        view.addSubview(signInButton)
        view.addSubview(errorMessage)
        
        // MARK: - Sign In Button
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
        ])
        
        // MARK: - LoginView
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1),
            
        ])
        
        // MARK: - errorLabel
        NSLayoutConstraint.activate([
            errorMessage.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 1),
            errorMessage.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            errorMessage.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
        ])
    }
}


extension LoginViewController {
    @objc func signInTapped(sender:UIButton){
        errorMessage.isHidden = false
        login()
    }
    
    private func login(){
        guard let username = username,let password = password else {
            assertionFailure("Username password boş olamaz")
            return
        }
        
        if username == "Salih" && password == "123456" {
            signInButton.configuration?.showsActivityIndicator = true
            errorMessage.isHidden = true
        } else {
            configureView(withMessage: "Kullanıcı adı veya Şifre hatalı..")
        }
        
        if username.isEmpty || password.isEmpty {
            configureView(withMessage: "Kullanıcı adı ve Şifre boş")
            return
        }
    }
    
    
    private func configureView(withMessage message:String) {
        errorMessage.isHidden = false
        errorMessage.text = message
    }
    
    
}
