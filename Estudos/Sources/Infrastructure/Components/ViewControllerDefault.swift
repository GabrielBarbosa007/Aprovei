//
//  ViewControllerDefault.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 14/01/23.
//

import Foundation
import UIKit

class ViewControllerDefault: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardByTappingoutSide))
         self.view.addGestureRecognizer(tap)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.title = "Tela de Login"
    }
    
    @objc
    func hideKeyboardByTappingoutSide(){
        self.view.endEditing(true)
    }
  
}
