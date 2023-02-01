
////
//  IntroductionView.swift
//  Estudos
//
//  Created by Diego on 15/01/23.
//

import UIKit

class IntroductionView3: UIView {
    
    lazy var imageIntroduction3 = ImageViewDefault(image: UIImage(named: "intro3") ?? UIImage())
    
    lazy var textone3 = LabelDefault2(title: "Tenha um feedback em tempo real", font: .systemFont(ofSize: 24, weight: .regular))
    
    lazy var texttwo3 = LabelDefault2(title: "Metas, hábitos, progressos e diversas outras funcionalidades para você fazer seus estudos decolarem!", font: .systemFont(ofSize: 15))
    
    lazy var buttonAdvance3 = ButtonDefault2(title: "Avançar",backgroundColor: UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1))
    
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
        buttonAdvance3.addTarget(targuet, action: action, for: .touchUpInside)
    }
    
    func addViews() {
        self.addSubview(imageIntroduction3)
        self.addSubview(textone3)
        self.addSubview(texttwo3)
        self.addSubview(buttonAdvance3)
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
        
            imageIntroduction3.topAnchor.constraint(equalTo: topAnchor,constant: 152),
            imageIntroduction3.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageIntroduction3.widthAnchor.constraint(equalToConstant: 289),
            imageIntroduction3.heightAnchor.constraint(equalToConstant: 246),
            
            textone3.topAnchor.constraint(equalTo: imageIntroduction3.bottomAnchor,constant: 50),
            textone3.centerXAnchor.constraint(equalTo: centerXAnchor),
            textone3.widthAnchor.constraint(equalToConstant: 270),
            textone3.heightAnchor.constraint(equalToConstant: 68),
            
            texttwo3.topAnchor.constraint(equalTo: textone3.bottomAnchor,constant: 10),
            texttwo3.centerXAnchor.constraint(equalTo: centerXAnchor),
            texttwo3.widthAnchor.constraint(equalToConstant: 300),
            texttwo3.heightAnchor.constraint(equalToConstant: 68),
            
            buttonAdvance3.topAnchor.constraint(equalTo: texttwo3.bottomAnchor,constant: 100),
            buttonAdvance3.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            buttonAdvance3.widthAnchor.constraint(equalToConstant: 160),
            buttonAdvance3.heightAnchor.constraint(equalToConstant: 40),
            buttonAdvance3.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -58)
            
        ])
    }
}

