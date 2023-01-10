//
//  LocalizableStrings.swift
//  Estudos
//
//  Created by Gabriel Barbosa on 05/01/23.
//

import Foundation
import UIKit 

enum LocalizableStrings: String {
    case email
    case password
    case buttonOpen
    case buttonRegister
    case emailPlaceholder
    case passwordPlaceholder
    
    func localize() -> String {
        rawValue.localizeInCurrentBundle()
    }
}

extension String {
    func localizeInCurrentBundle(_ accessibility: Bool = false) -> String {
        let path: Bundle = .current
        
        return NSLocalizedString(self,
                                 tableName: accessibility ?
                                 "LocalizablloginAccessibilityLocalizable":
                                    "LoginLocalizable",
                                 bundle: path,
                                 value: String(),
                                 comment: String())
    }
}

extension Bundle {
    static var current: Bundle {
        class DummyClass {
            init() {
            }
        }
        return Bundle(for: DummyClass.self)
    }
}
