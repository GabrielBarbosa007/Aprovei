

//
//  IntrodutionController.swift
//  Estudos
//
//  Created by Diego on 15/01/23.
//

import UIKit

class IntroductionController4: UIViewController {
    
    var custonView4: IntroductionView4?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCustonView()

    }
    
    func setCustonView() {
        custonView4 = IntroductionView4()
        self.view = custonView4
    }
    
    func setButtons() {

    }
    
    @objc private func forIntrofuction4() {
        let advance =  LoginViewController()

        self.navigationController?.pushViewController(advance, animated: true)
    }
}

