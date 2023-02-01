//
//  ButtonDefaul2.swift
//  Estudos
//
//  Created by Diego on 15/01/23.
//

import UIKit

class ButtonDefault2: UIButton {
    
    init(title: String = "", backgroundColor: UIColor = UIColor.clear, colorTitle: UIColor = .white, borderColor: CGColor = UIColor.clear.cgColor ) {
        super.init(frame: .zero)
        initDefault(title: title,backgroundColor: backgroundColor, colorTitle: colorTitle, borderColor: borderColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String, backgroundColor: UIColor, colorTitle: UIColor, borderColor: CGColor) {
        self.setTitle(title, for: .normal)
        self.setTitleColor(colorTitle, for: .normal)
        self.layer.cornerRadius = 20
        self.setImage(UIImage(named: title), for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.masksToBounds = true
        self.titleLabel?.font = .systemFont(ofSize: 19, weight: .medium)
        self.layer.borderColor = borderColor
        self.layer.borderWidth = 3
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

