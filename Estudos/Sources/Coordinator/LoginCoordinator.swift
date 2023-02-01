//
//  LoginCoordinator.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 05/01/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
}
    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
