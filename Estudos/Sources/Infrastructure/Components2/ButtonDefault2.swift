//
//  ButtonDefaul2.swift
//  Estudos
//
//  Created by Diego on 15/01/23.
//

import UIKit

class ButtonDefaul2: UIButton {
    
    init(title: String = "Avançar") {
        super.init(frame: .zero)
        initDefault(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String) {
        self.setTitle(title, for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = 20
        self.backgroundColor = UIColor(red: 228/255, green: 11/255, blue: 174/255, alpha: 1)
        self.layer.masksToBounds = true
        self.titleLabel?.font = .systemFont(ofSize: 19, weight: .heavy)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

