////
//  IntroductionView.swift
//  Estudos
//
//  Created by Diego on 15/01/23.
//

import UIKit

class IntroductionView: UIView {
    
    lazy var imageIntroduction = ImageViewDefault()
    
    lazy var textone = LabelDefault2(title: "Que tal levar seus estudos a outro nível?", font: .systemFont(ofSize: 24, weight: .regular))
    
    lazy var texttwo = LabelDefault2(title: "Depois de ouvir diversos concurseiros e estudantes, resolvemos te ajudar a conquistar teus objetivos!", font: .systemFont(ofSize: 15))
    
    lazy var buttonAdvance = ButtonDefault2(title: "Avançar",backgroundColor: UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func  setButtonAdvance(targuet: Any?, action: Selector) {
        buttonAdvance.addTarget(targuet, action: action, for: .touchUpInside)
    }
    
    func addViews() {
        self.addSubview(imageIntroduction)
        self.addSubview(textone)
        self.addSubview(texttwo)
        self.addSubview(buttonAdvance)
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
        
            imageIntroduction.topAnchor.constraint(equalTo: topAnchor,constant: 152),
            imageIntroduction.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageIntroduction.widthAnchor.constraint(equalToConstant: 289),
            imageIntroduction.heightAnchor.constraint(equalToConstant: 246),
            
            textone.topAnchor.constraint(equalTo: imageIntroduction.bottomAnchor,constant: 50),
            textone.centerXAnchor.constraint(equalTo: centerXAnchor),
            textone.widthAnchor.constraint(equalToConstant: 270),
            textone.heightAnchor.constraint(equalToConstant: 68),
            
            texttwo.topAnchor.constraint(equalTo: textone.bottomAnchor,constant: 10),
            texttwo.centerXAnchor.constraint(equalTo: centerXAnchor),
            texttwo.widthAnchor.constraint(equalToConstant: 300),
            texttwo.heightAnchor.constraint(equalToConstant: 68),
            
            buttonAdvance.topAnchor.constraint(equalTo: texttwo.bottomAnchor,constant: 100),
            buttonAdvance.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            buttonAdvance.widthAnchor.constraint(equalToConstant: 160),
            buttonAdvance.heightAnchor.constraint(equalToConstant: 40),
            buttonAdvance.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -58)
            
        ])
    }
}

