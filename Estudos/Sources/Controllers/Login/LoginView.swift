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
    
    lazy var emailLabel: UILabel = {
        var label = UILabel()
        label.text = LocalizableStrings.email.localize()
        label.textColor = .labelTextColor
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    lazy var passwordLabel: UILabel = {
        var labelPassword = UILabel()
        labelPassword.text = LocalizableStrings.password.localize()
        labelPassword.textAlignment = .left
        labelPassword.textColor = .labelTextColor
        labelPassword.translatesAutoresizingMaskIntoConstraints = false
        
        return labelPassword
    }()
    
    // MARK: UITextField
    
    lazy var uitextField: UITextField = {
        var textField = UITextField()
        textField.placeholder = LocalizableStrings.emailPlaceholder.localize()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.returnKeyType = UIReturnKeyType.next
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.backgroundColor = UIColor.white
        textField.textColor = UIColor.black
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.layer.cornerRadius = 3
        textField.layer.borderWidth = 0.5
        textField.layer.borderColor = UIColor.lineTextField.cgColor
        
        return textField
    }()
    lazy var passwordTextField: UITextField = {
        var textFieldPassword = UITextField()
        textFieldPassword.placeholder = LocalizableStrings.passwordPlaceholder.localize()
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        
        textFieldPassword.isSecureTextEntry = true
        textFieldPassword.keyboardType = UIKeyboardType.default
        textFieldPassword.returnKeyType = UIReturnKeyType.done
        textFieldPassword.font = UIFont.systemFont(ofSize: 15)
        textFieldPassword.backgroundColor = UIColor.white
        textFieldPassword.textColor = UIColor.black
        textFieldPassword.borderStyle = UITextField.BorderStyle.roundedRect
        textFieldPassword.clearButtonMode = UITextField.ViewMode.whileEditing
        textFieldPassword.layer.cornerRadius = 3
        textFieldPassword.layer.borderWidth = 0.5
        textFieldPassword.layer.borderColor = UIColor.lineTextField.cgColor
        
        return textFieldPassword
    }()
    
    // MARK: Buttons
    
    lazy var buttonEntrar: UIButton = {
        var entrarButton = UIButton()
        entrarButton.translatesAutoresizingMaskIntoConstraints = false
        entrarButton.setTitle(LocalizableStrings.buttonOpen.localize(), for: .normal)
        entrarButton.backgroundColor = .buttonBackground
        entrarButton.setTitleColor(UIColor.white, for: .normal)
        entrarButton.layer.cornerRadius = 7
        entrarButton.layer.borderWidth = 0.5
        entrarButton.layer.borderColor = UIColor.colorLabelButton.cgColor
        
        return entrarButton
        
    }()
    lazy var buttonRegister: UIButton = {
        var registerButton = UIButton()
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.setTitle(LocalizableStrings.buttonRegister.localize(), for: .normal)
        registerButton.backgroundColor = .buttonBackground
        registerButton.setTitleColor(UIColor.white, for: .normal)
        registerButton.layer.cornerRadius = 7
        registerButton.layer.borderWidth = 0.5
        registerButton.layer.borderColor = UIColor.colorLabelButton.cgColor
        
        return registerButton
    }()
    
    
    // MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackground
        setupVisualElement()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Metodos de visualizacao
    
    private func setupVisualElement() {
        setupLabelEmail()
        setupEmailTextField()
        setupPasswordLabel()
        setupPasswordTextField()
        setupButtonOpen()
        setupRegisterButton()
    }
    private func subViews() {
        self.addSubview(emailLabel)
        self.addSubview(uitextField)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(buttonEntrar)
        self.addSubview(buttonRegister)
    }
    
    // MARK: Constraints dos elementos visuais
    
    private func setupLabelEmail() {
        self.subViews()
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 95),
            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            emailLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12)
        ])
    }
    private func setupEmailTextField() {
        self.subViews()
        NSLayoutConstraint.activate([
            uitextField.bottomAnchor.constraint(equalTo: emailLabel.bottomAnchor,constant: 50),
            uitextField.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12),
            uitextField.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12)
        ])
    }
    private func setupPasswordLabel(){
        self.subViews()
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: uitextField.topAnchor,constant: 60),
            passwordLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12),
            passwordLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12)
        ])
    }
    private func setupPasswordTextField() {
        self.subViews()
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.topAnchor,constant: 35),
            passwordTextField.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12),
            passwordTextField.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12)
        ])
    }
    private func setupButtonOpen() {
        self.subViews()
        NSLayoutConstraint.activate([
            buttonEntrar.topAnchor.constraint(equalTo: passwordTextField.topAnchor,constant: 80),
            buttonEntrar.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12),
            buttonEntrar.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12)
        ])
    }
    private func setupRegisterButton() {
        self.subViews()
        NSLayoutConstraint.activate([
            buttonRegister.topAnchor.constraint(equalTo: buttonEntrar.topAnchor,constant: 70 ),
            buttonRegister.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12),
            buttonRegister.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12)
        ])
    }
}
