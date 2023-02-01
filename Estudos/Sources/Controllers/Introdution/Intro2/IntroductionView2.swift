////
//  File.swift
//  Estudos
//
//  Created by Diego on 17/01/23.
//

import UIKit


class IntroductionView2: UIView {
    
    
    var imageIntroduction2 = ImageViewDefault(image: UIImage(named: "intro2") ?? UIImage())
    
    lazy var textone2 = LabelDefault2(title: "Organize seus horários da maneira que quiser", font: .systemFont(ofSize: 24, weight: .regular))
    
    lazy var texttwo2 = LabelDefault2(title: "Fácil, rápido e prático. Insira suas próprias matérias e as distribua na semana como achar melhor!", font: .systemFont(ofSize: 15))
    
    lazy var buttonAdvance2 = ButtonDefault2(title: "Avançar",backgroundColor: UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1))
    
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
        buttonAdvance2.addTarget(targuet, action: action, for: .touchUpInside)
    }
    
    func addViews() {
        self.addSubview(imageIntroduction2)
        self.addSubview(textone2)
        self.addSubview(texttwo2)
        self.addSubview(buttonAdvance2)
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            
            imageIntroduction2.topAnchor.constraint(equalTo: topAnchor,constant: 152),
            imageIntroduction2.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageIntroduction2.widthAnchor.constraint(equalToConstant: 289),
            imageIntroduction2.heightAnchor.constraint(equalToConstant: 246),
            
            textone2.topAnchor.constraint(equalTo: imageIntroduction2.bottomAnchor,constant: 50),
            textone2.centerXAnchor.constraint(equalTo: centerXAnchor),
            textone2.widthAnchor.constraint(equalToConstant: 270),
            textone2.heightAnchor.constraint(equalToConstant: 68),
            
            texttwo2.topAnchor.constraint(equalTo: textone2.bottomAnchor,constant: 10),
            texttwo2.centerXAnchor.constraint(equalTo: centerXAnchor),
            texttwo2.widthAnchor.constraint(equalToConstant: 300),
            texttwo2.heightAnchor.constraint(equalToConstant: 68),
            
            buttonAdvance2.topAnchor.constraint(equalTo: texttwo2.bottomAnchor,constant: 100),
            buttonAdvance2.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            buttonAdvance2.widthAnchor.constraint(equalToConstant: 160),
            buttonAdvance2.heightAnchor.constraint(equalToConstant: 40),
            buttonAdvance2.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -58)
            
        ])
    }
}

