//
//  Font.swift
//  EcommerceApp
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

extension Font {
    static func montserratBold(size: CGFloat) -> Font {
        Font.custom("Montserrat-Bold", size: size)
    }
    static func montserratSemiBold(size: CGFloat) -> Font {
        Font.custom("Montserrat-SemiBold", size: size)
    }
    static func montserratMedium(size: CGFloat) -> Font {
        Font.custom("Montserrat-Medium", size: size)
    }
    static func montserratRegular(size: CGFloat) -> Font {
        Font.custom("Montserrat-Regular", size: size)
    }
    static func montserratBlack(size: CGFloat) -> Font {
        Font.custom("Montserrat-Black", size: size)
    }
}
