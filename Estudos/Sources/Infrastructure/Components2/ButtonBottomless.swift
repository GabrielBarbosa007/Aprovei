//
//  ButtonBottomless.swift
//  Estudos
//
//  Created by Diego on 27/01/23.
//

import UIKit

class ButtonBottomless: UIButton {
    
    init(title: String = "") {
        super.init(frame: .zero)
        initDefault(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initDefault(title: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1).cgColor
        self.layer.borderWidth = 3
        self.titleLabel?.font = .systemFont(ofSize: 19, weight: .medium)
        self.setTitle(title, for: .normal)
        self.setTitleColor(UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1), for: .normal)
        self.layer.borderColor = UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1).cgColor
    }
}
