//
//  Helpers.swift
//  EcommerceApp
//
//  Created by V K on 26.03.2023.
//

import SwiftUI

struct UIConstants {
    
    static let width: CGFloat = UIScreen.main.bounds.width
    static let height: CGFloat = UIScreen.main.bounds.height
    
}

struct Helpers {
    
    static func validateEmail(_ email: String) -> Bool {
        if email.count > 25 {
            return false
        }
        let format = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", format)
        return predicate.evaluate(with: email)
    }
    
}
