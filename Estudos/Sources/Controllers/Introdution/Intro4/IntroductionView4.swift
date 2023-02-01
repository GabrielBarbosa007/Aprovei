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
    
    lazy var buttonGoogle = ButtonDefault2(title: "google")
    
    lazy var buttonFacebook = ButtonDefault2(title: "facebook")
    
    lazy var buttonApple = ButtonDefault2(title: "apple")
    
    lazy var ou = LabelDefault2(title: "ou", font: .systemFont(ofSize: 16) )
    
    lazy var buttonAccount = ButtonDefault2(title: "Cria conta",colorTitle: UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1),borderColor: UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1).cgColor)
    
    lazy var enterButton = ButtonDefault2(title: "Entrar",backgroundColor: UIColor(red: 234/255, green: 49/255, blue: 111/255, alpha: 1))
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        addViews()
        setConstraints()
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setButton(targuet: Any?, action: Selector) {
        enterButton.addTarget(targuet, action: action, for: .touchUpInside)
    }
    
    func addViews() {
        self.addSubview(imageIntroduction4)
        self.addSubview(textIntroductio4)
        self.addSubview(text2)
        self.addSubview(buttonGoogle)
        self.addSubview(buttonFacebook)
        self.addSubview(buttonApple)
        self.addSubview(ou)
        self.addSubview(buttonAccount)
        self.addSubview(enterButton)
        
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
            buttonApple.heightAnchor.constraint(equalToConstant: 64),
            
            ou.topAnchor.constraint(equalTo: buttonFacebook.bottomAnchor,constant: 24),
            ou.centerXAnchor.constraint(equalTo: centerXAnchor),
            ou.widthAnchor.constraint(equalToConstant: 301),
            ou.heightAnchor.constraint(equalToConstant: 22),
            
            buttonAccount.topAnchor.constraint(equalTo: ou.bottomAnchor,constant: 25),
            buttonAccount.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -58),
            buttonAccount.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            buttonAccount.widthAnchor.constraint(equalToConstant: 160),
            buttonAccount.heightAnchor.constraint(equalToConstant: 40),
            
            enterButton.topAnchor.constraint(equalTo: ou.bottomAnchor,constant: 25),
            enterButton.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -58),
            enterButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            enterButton.widthAnchor.constraint(equalToConstant: 160),
            enterButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
