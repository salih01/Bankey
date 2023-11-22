//
//  LoginView.swift
//  Bankey
//
//  Created by Salih on 20.11.2023.
//

import Foundation
import UIKit

class LoginView:UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder:NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}
extension LoginView {
    
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout(){
        
    }
}
