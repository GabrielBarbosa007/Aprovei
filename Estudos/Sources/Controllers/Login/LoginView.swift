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
                                           font: UIFont.systemFont(ofSize: Constant.uiFont),
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
        
        let emailTopAnchor: CGFloat = 100
        let passwordBottonAnchor: CGFloat = 90
        let buttonTopAnchor: CGFloat = 300
        let ButtonRegisterTopAnchor: CGFloat = 70
        
        NSLayoutConstraint.activate([
            emailField.topAnchor.constraint(equalTo: self.topAnchor, constant: emailTopAnchor),
            emailField.leftAnchor.constraint(equalTo: self.leftAnchor,constant: ConstantsConstraints.leftAnchor),
            emailField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: ConstantsConstraints.rightAnchor),
            
            passwordField.bottomAnchor.constraint(equalTo: emailField.bottomAnchor, constant: passwordBottonAnchor),
            passwordField.leftAnchor.constraint(equalTo: self.leftAnchor,constant: ConstantsConstraints.leftAnchor),
            passwordField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: ConstantsConstraints.rightAnchor),
            
            buttonEntrar.topAnchor.constraint(equalTo: self.topAnchor,constant: buttonTopAnchor),
            buttonEntrar.leftAnchor.constraint(equalTo: self.leftAnchor,constant: ConstantsConstraints.leftAnchor),
            buttonEntrar.rightAnchor.constraint(equalTo: self.rightAnchor, constant: ConstantsConstraints.rightAnchor),
            
            buttonRegister.topAnchor.constraint(equalTo: buttonEntrar.topAnchor,constant: ButtonRegisterTopAnchor),
            buttonRegister.leftAnchor.constraint(equalTo: self.leftAnchor,constant: ConstantsConstraints.leftAnchor),
            buttonRegister.rightAnchor.constraint(equalTo: self.rightAnchor,constant: ConstantsConstraints.rightAnchor)
        ])
    }
}
