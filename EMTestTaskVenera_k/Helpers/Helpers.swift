//
//  Helpers.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 26.03.2023.
//

import SwiftUI

struct Helpers {
    static let width = UIScreen.main.bounds.width
    static let height = UIScreen.main.bounds.height
    
    
    static func emailValidator(_ email: String) -> Bool {
        if email.count > 15 {
            return false
        }
        let format = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", format)
        return predicate.evaluate(with: email)
    }
    
}





//MARK: - shows all available fonts
//    init() {
//        for fn in UIFont.familyNames {
//            print(fn)
//            for ftn in UIFont.fontNames(forFamilyName: fn) {
//                print("--\(ftn)")
//            }
//        }
//    }

