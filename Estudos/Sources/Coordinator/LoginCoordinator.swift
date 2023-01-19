//
//  LoginCoordinator.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 05/01/23.
//

import Foundation
import UIKit

class IntroductionCoordinator: Coordinator {
    
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
}
    func start() {
        let viewController = IntroductionController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
