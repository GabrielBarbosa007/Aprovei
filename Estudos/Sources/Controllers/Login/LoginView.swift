//
//  LoginView.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 05/01/23.
//

import Foundation
import UIKit

class LoginView: ViewDefault {
    
    
    
    
    
    // MARK: Implementar a imagem aqui
    
    
    
    
    
    
    // MARK: - Labels
    lazy var emailField = LabelTextDefault(labelText: LocalizableStrings.email.localize(),
                                           placeholder: LocalizableStrings.emailPlaceholder.localize(),
                                           font: UIFont.systemFont(ofSize: Constant.uiFont),
                                           keyboardType: .emailAddress,
                                           returnKeyType: .next)
    
    lazy var passwordField = LabelTextDefault(labelText: LocalizableStrings.password.localize(),
                                              placeholder: LocalizableStrings.passwordPlaceholder.localize(), font: UIFont.systemFont(ofSize: Constant.uiFont),
                                              keyboardType: .default,
                                              returnKeyType: .done)
    
    // MARK: Buttons:
    lazy var buttonEntrar = ButtonDefault(title: LocalizableStrings.buttonOpen.localize())
    lazy var buttonRegister = ButtonDefault(title: LocalizableStrings.buttonRegister.localize())
    
    // MARK: Metodos de visualizacao:
    
    override func setupVisualElement() {
        super.setupVisualElement()
        setupLabelEmail()
    }
    
    private func subViews() {
        self.addSubview(emailField)
        emailField.textField.delegate = self
        self.addSubview(passwordField)
        passwordField.textField.delegate = self
        self.addSubview(buttonEntrar)
        self.addSubview(buttonRegister)
    }
    
    // MARK: Constraints dos elementos visuais:
    
   private func setupLabelEmail() {
       subViews()
        
        let emailTopAnchor: CGFloat = 100
        let passwordBottonAnchor: CGFloat = 90
        let buttonOpenTopAnchor: CGFloat = 300
        let ButtonRegisterTopAnchor: CGFloat = 70
        
        NSLayoutConstraint.activate([
            emailField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: emailTopAnchor),
            emailField.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: ConstantsConstraints.leftAnchor),
            emailField.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: ConstantsConstraints.rightAnchor),
            
            passwordField.bottomAnchor.constraint(equalTo: emailField.bottomAnchor, constant: passwordBottonAnchor),
            passwordField.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: ConstantsConstraints.leftAnchor),
            passwordField.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: ConstantsConstraints.rightAnchor),
            
            buttonEntrar.topAnchor.constraint(equalTo: contentView.topAnchor,constant: buttonOpenTopAnchor),
            buttonEntrar.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: ConstantsConstraints.leftAnchor),
            buttonEntrar.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: ConstantsConstraints.rightAnchor),
            
            buttonRegister.topAnchor.constraint(equalTo: buttonEntrar.topAnchor,constant: ButtonRegisterTopAnchor),
            buttonRegister.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: ConstantsConstraints.leftAnchor),
            buttonRegister.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: ConstantsConstraints.rightAnchor)
        ])
    }
}
