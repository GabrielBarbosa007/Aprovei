//
//  IntroductionView4.swift
//  Estudos
//
//  Created by Diego on 23/01/23.
//

import UIKit

class IntroductionView4: UIView {
    
    lazy var imageIntroduction4 = ImageViewDefault(image: UIImage(named: "intro4") ?? UIImage())
    
    lazy var textIntroductio4 = LabelDefault2(title: "Faça com que seus estudos decolem", font: .systemFont(ofSize: 24, weight: .medium))
    
    lazy var text2 = LabelDefault2(title: "Juntamos um monte de novidades em um único lugar para ajudá-lo a chegar onde sempre sonhou!", font: .systemFont(ofSize: 15, weight: .regular))
    
    lazy var buttonGoogle = ButtonSocial(title: "google")
    
    lazy var buttonFacebook = ButtonSocial(title: "facebook")
    
    lazy var buttonApple = ButtonSocial(title: "apple")
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        addViews()
        setConstraints()
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        self.addSubview(imageIntroduction4)
        self.addSubview(textIntroductio4)
        self.addSubview(text2)
        self.addSubview(buttonGoogle)
        self.addSubview(buttonFacebook)
        self.addSubview(buttonApple)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
        
            imageIntroduction4.topAnchor.constraint(equalTo: topAnchor,constant: 110),
            imageIntroduction4.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageIntroduction4.widthAnchor.constraint(equalToConstant: 268),
            imageIntroduction4.heightAnchor.constraint(equalToConstant: 247),
            
            textIntroductio4.topAnchor.constraint(equalTo: imageIntroduction4.bottomAnchor,constant: 32),
            textIntroductio4.centerXAnchor.constraint(equalTo: centerXAnchor),
            textIntroductio4.widthAnchor.constraint(equalToConstant: 301),
            textIntroductio4.heightAnchor.constraint(equalToConstant: 68),
            
            text2.topAnchor.constraint(equalTo: textIntroductio4.bottomAnchor,constant: 16),
            text2.centerXAnchor.constraint(equalTo: centerXAnchor),
            text2.widthAnchor.constraint(equalToConstant: 301),
            text2.heightAnchor.constraint(equalToConstant: 66),
            
            buttonGoogle.topAnchor.constraint(equalTo: text2.bottomAnchor,constant: 40),
            buttonGoogle.trailingAnchor.constraint(equalTo: buttonFacebook.leadingAnchor,constant: -40),
            buttonGoogle.widthAnchor.constraint(equalToConstant: 64),
            buttonGoogle.heightAnchor.constraint(equalToConstant: 64),
            
            buttonFacebook.topAnchor.constraint(equalTo: text2.bottomAnchor,constant: 40),
            buttonFacebook.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonFacebook.widthAnchor.constraint(equalToConstant: 64),
            buttonFacebook.heightAnchor.constraint(equalToConstant: 64),
            
            buttonApple.topAnchor.constraint(equalTo: text2.bottomAnchor,constant: 40),
            buttonApple.leadingAnchor.constraint(equalTo: buttonFacebook.trailingAnchor,constant: 40),
            buttonApple.widthAnchor.constraint(equalToConstant: 64),
            buttonApple.heightAnchor.constraint(equalToConstant: 64
                                               )
        ])
        
    }
}
