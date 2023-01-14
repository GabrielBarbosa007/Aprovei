//
//  LoginViewTextFieldDelegateExtension.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 14/01/23.
//

import Foundation
import UIKit

extension LoginView: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == emailField.textField {
            self.scrollView.setContentOffset(CGPoint(x: 0, y: 10), animated: true)
        } else if textField == passwordField.textField {
            self.scrollView.setContentOffset(CGPoint(x: 0, y: 5), animated: true)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailField.textField {
            self.passwordField.textField.becomeFirstResponder()
        } else if textField == passwordField.textField {
            textField.resignFirstResponder()
        }
        return true
    }
}
