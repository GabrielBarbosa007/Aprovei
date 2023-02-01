//
//  ImageViewDefault.swift
//  Estudos
//
//  Created by Diego on 15/01/23.
//

import Foundation
import UIKit

class ImageViewDefault: UIImageView {
    
    init(image: UIImage = UIImage(named: "intro1") ?? UIImage()) {
        super.init(frame: .zero)
        initDefault(image: image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initDefault(image: UIImage) {
        self.image = image
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

