//
//  ButtonDefault.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 10/01/23.
//

import Foundation
import UIKit



class ButtonDefault: UIButton {
    init(title:String){
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        initDefault()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func initDefault() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .buttonBackground
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = ConstantsComponents.buttonCornerRadius
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.colorLabelButton.cgColor
    }
}

