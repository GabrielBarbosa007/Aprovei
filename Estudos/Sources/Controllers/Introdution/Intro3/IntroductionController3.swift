
//
//  IntrodutionController.swift
//  Estudos
//
//  Created by Diego on 15/01/23.
//

import UIKit

class IntroductionController3: UIViewController {
    
    var custonView: IntroductionView3?

    override func viewDidLoad() {
        super.viewDidLoad()
        setCustonView()
        setupButton()
    }
    
    func setCustonView() {
        custonView = IntroductionView3()
        self.view = custonView
    }
    
    func setupButton() {
        custonView?.setButtonAdvance(targuet: self, action: #selector(forIntrofuction4))
    }
    
    @objc private func forIntrofuction4() {
        let advance =  IntroductionController4()
        
        self.navigationController?.pushViewController(advance, animated: true)
    }
}

