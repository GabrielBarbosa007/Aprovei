////
//  IntrodutionController.swift
//  Estudos
//
//  Created by Diego on 17/01/23.
//

import UIKit

class IntroductionController2: UIViewController {
    
    var custonView: IntroductionView2?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCustonView()
        setupButton()
    }
    
    func setCustonView() {
        custonView = IntroductionView2()
        self.view = custonView
    }
    
    func setupButton() {
        custonView?.setButtonAdvance(targuet: self, action: #selector(forIntrofuction3))
    }
    
    @objc private func forIntrofuction3() {
        let advance =  IntroductionController3()

        self.navigationController?.pushViewController(advance, animated: true)
    }
}

