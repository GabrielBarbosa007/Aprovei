//
//  TextFieldDefault.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 11/01/23.
//

import Foundation
import UIKit


class TextFieldDefault: UITextField {

    convenience init(placeholder: String) {
        self.init(placeholder: placeholder , font: UIFont.systemFont(ofSize: 14), keyboardType: .default, returnKeyType: .done)

        self.placeholder = placeholder
        self.font = font
        self.keyboardType = keyboardType
        self.returnKeyType = returnKeyType
    }

    init(placeholder: String, font: UIFont, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        super.init(frame: .zero)

        self.placeholder = placeholder
        self.font = font
        self.keyboardType  = keyboardType
        self.returnKeyType = returnKeyType

        initDefault()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func initDefault() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.white
        self.textColor = UIColor.black
        self.borderStyle = UITextField.BorderStyle.roundedRect
        self.clearButtonMode = UITextField.ViewMode.whileEditing
        self.layer.cornerRadius = ConstantsComponents.buttonCornerRadius
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lineTextField.cgColor
    }
}
