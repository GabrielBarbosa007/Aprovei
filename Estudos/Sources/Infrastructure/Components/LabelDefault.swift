//
//  LabelDefault.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 10/01/23.
//

import Foundation
import UIKit


class LabelDefault: UILabel {
    init(title:String){
        super.init(frame: .zero)
        initDefault()
        self.text = title
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func initDefault() {
        self.textColor = .labelTextColor
        self.textAlignment = .left
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
