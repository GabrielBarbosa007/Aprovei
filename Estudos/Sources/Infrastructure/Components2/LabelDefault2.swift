//
//  LabelDefault2.swift
//  Estudos
//
//  Created by Diego on 15/01/23.
//

import UIKit

class LabelDefault2: UILabel{
    
    init(title: String = "",font: UIFont = UIFont(), textColor: UIColor = .black , textAlignment: NSTextAlignment = .center) {
        super.init(frame: .zero)
        
        initDefault(title: title, font: font, textColor: textColor, textAlignment: textAlignment)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String,font: UIFont, textColor: UIColor, textAlignment: NSTextAlignment) {
        self.text = title
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.numberOfLines = 0
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

