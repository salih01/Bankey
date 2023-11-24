//
//  ViewController.swift
//  Bankey
//
//  Created by Salih on 20.11.2023.
//

import UIKit

class LoginViewController: UIViewController {

    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }


}
extension LoginViewController {
    
    private func style(){
        
    }
    private func layout(){
        view.addSubview(loginView)
        NSLayoutConstraint.activate([
        
        ])
    }
}

