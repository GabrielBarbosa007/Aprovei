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
        // Do any additional setup after loading the view.
    }
    
    func setCustonView() {
        custonView = IntroductionView2()
        self.view = custonView
    }
}

