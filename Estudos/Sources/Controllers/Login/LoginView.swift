//
//  LoginView.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 05/01/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    // MARK: - Labels
    
    lazy var emailField = LabelTextDefault(labelText: LocalizableStrings.email.localize(),
                                           placeholder: LocalizableStrings.emailPlaceholder.localize(),
                                           font: UIFont.systemFont(ofSize: 15),
                                           keyboardType: .emailAddress,
                                           returnKeyType: .next)
    
    lazy var passwordField = LabelTextDefault(labelText: LocalizableStrings.password.localize(),
                                              placeholder: LocalizableStrings.passwordPlaceholder.localize())

    // MARK: Buttons:
    lazy var buttonEntrar = ButtonDefault(title: LocalizableStrings.buttonOpen.localize())
    lazy var buttonRegister = ButtonDefault(title: LocalizableStrings.buttonRegister.localize())
    
    // MARK: - init:
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackground
        setupVisualElement()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Metodos de visualizacao:
    
    private func setupVisualElement() {
        setupLabelEmail()
    }
    
    private func subViews() {
        self.addSubview(emailField)
        self.addSubview(passwordField)
        self.addSubview(buttonEntrar)
        self.addSubview(buttonRegister)
    }
    
    // MARK: Constraints dos elementos visuais:
    
    private func setupLabelEmail() {
        self.subViews()
        NSLayoutConstraint.activate([
            
            emailField.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            emailField.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12),
            emailField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            
            passwordField.bottomAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 90),
            passwordField.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12),
            passwordField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            
            buttonEntrar.topAnchor.constraint(equalTo: self.topAnchor,constant: 300),
            buttonEntrar.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12),
            buttonEntrar.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            
            buttonRegister.topAnchor.constraint(equalTo: buttonEntrar.topAnchor,constant: 70 ),
            buttonRegister.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12),
            buttonRegister.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12)
            
        ])
    }
}
