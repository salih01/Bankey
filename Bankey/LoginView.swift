//
//  LoginView.swift
//  Bankey
//
//  Created by Salih on 20.11.2023.
//

import Foundation
import UIKit

class LoginView:UIView {
    
    let userNameTextField = UITextField()
    let passwordTextField = UITextField()
    let stackView = UIStackView()
    let dvider = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init(coder:NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
}
extension LoginView {
    
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .secondarySystemBackground
        
        // MARK: - StackView
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis    = .vertical
        stackView.spacing = 8
        
        // MARK: - userName
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.placeholder = "User Name"
        userNameTextField.delegate = self
        
        // MARK: - Password
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.delegate    = self
        
        // MARK: - Dvider
        dvider.translatesAutoresizingMaskIntoConstraints = false
        dvider.backgroundColor = .secondarySystemFill
        layer.cornerRadius = 10
        clipsToBounds = true
        
    }
    
    func layout(){
        addSubview(stackView)
        stackView.addArrangedSubview(userNameTextField)
        stackView.addArrangedSubview(dvider)
        stackView.addArrangedSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1)
        ])
        
        dvider.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
}
extension LoginView:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if userNameTextField.text != "" {
            return true
        } else {
            return false
        }
    }
 
}
