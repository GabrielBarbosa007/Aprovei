//
//  LoginViewController.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 05/01/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    var mainView = LoginView()
    override func loadView() {
        super.loadView()
        self.view = mainView
    }
}
