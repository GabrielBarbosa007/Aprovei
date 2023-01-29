//
//  IntroductionController4.swift
//  Estudos
//
//  Created by Diego on 23/01/23.
//

import UIKit

class IntroductionController4: UIViewController {
    
    var custonView: IntroductionView4?

    override func viewDidLoad() {
        super.viewDidLoad()
        setCustonView()
    }
    
    func setCustonView() {
        custonView = IntroductionView4()
        self.view = custonView
    }
}
