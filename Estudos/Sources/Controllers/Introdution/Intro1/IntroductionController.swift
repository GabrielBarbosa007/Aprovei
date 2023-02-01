//
//  IntrodutionController.swift
//  Estudos
//
//  Created by Diego on 15/01/23.
//

import UIKit

class IntroductionController: UIViewController {
    
    var custonView: IntroductionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        setCustonView()
        setupButton()
    }
    
    func setCustonView() {
        custonView = IntroductionView()
        self.view = custonView
    }
    
    func setupButton() {
        custonView?.setButtonAdvance(targuet: self, action: #selector(forIntrofuction2))
    }
    
    @objc private func forIntrofuction2() {
        let advance =  IntroductionController2()
        
        self.navigationController?.pushViewController(advance, animated: true)
    }
}

