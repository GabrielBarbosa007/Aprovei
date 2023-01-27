//
//  ButtonSocial.swift
//  Estudos
//
//  Created by Diego on 26/01/23.
//

import UIKit

class ButtonSocial: UIButton {
    
    init(title: String = "") {
        super.init(frame: .zero)
        
        initDefault(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String) {
       self.layer.cornerRadius = 32
       self.layer.masksToBounds = true
       self.setImage(UIImage(named: title), for: .normal)
       self.translatesAutoresizingMaskIntoConstraints = false
    }
}
