//
//  Font.swift
//  EMTestTaskVenera_k
//
//  Created by V K on 25.03.2023.
//

import SwiftUI

extension Font {
    static let montserratTitle = Font.custom("Montserrat-Regular", size: Font.TextStyle.title.size)//, relativeTo: .caption)
    static let montserratTitle2 = Font.custom("Montserrat-Regular", size: Font.TextStyle.title2.size)
    static let montserratCallout = Font.custom("Montserrat-Regular", size: Font.TextStyle.callout.size)
    static let montserratHeadline = Font.custom("Montserrat-Regular", size: Font.TextStyle.headline.size)
    static let montserratLargeTitle = Font.custom("Montserrat-Regular", size: Font.TextStyle.largeTitle.size)
    static let montserratSubheadline = Font.custom("Montserrat-Regular", size: Font.TextStyle.subheadline.size)
    static let montserrat = Font.custom("Montserrat-Regular", size: Font.TextStyle.body.size)
    static let montserratFootnote = Font.custom("Montserrat-Regular", size: Font.TextStyle.footnote.size)
    static let montserratCaption = Font.custom("Montserrat-Regular", size: Font.TextStyle.caption.size)
    static let montserratCaption2 = Font.custom("Montserrat-Regular", size: Font.TextStyle.caption2.size)
}

extension Font.Weight {
    
}
extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 60
        case .title: return 48
        case .title2: return 34
        case .title3: return 24
        case .headline, .body: return 18
        case .subheadline, .callout: return 16
        case .footnote: return 14
        case .caption: return 12
        case .caption2: return 10
        @unknown default:
            return 8
        }
    }
}


//
//extension Font {
//
//    public static var largeTitle: Font {
//        return Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize)
//    }
//
//    public static var title: Font {
//        return Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .title1).pointSize)
//    }
//
//    public static var headline: Font {
//        return Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .headline).pointSize)
//    }
//
//    public static var subheadline: Font {
//        return Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .subheadline).pointSize)
//    }
//
//    public static var body: Font {
//           return Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .body).pointSize)
//       }
//
//    public static var callout: Font {
//           return Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .callout).pointSize)
//       }
//
//    public static var footnote: Font {
//           return Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .footnote).pointSize)
//       }
//
//    public static var caption: Font {
//           return Font.custom("Montserrat-Regular", size: UIFont.preferredFont(forTextStyle: .caption1).pointSize)
//       }
//
//    public static func system(size: CGFloat, weight: Font.Weight = .regular, design: Font.Design = .default) -> Font {
//        var font = "Montserrat-Regular"
//        switch weight {
//        case .bold: font = "Montserrat-Bold"
//        case .heavy: font = "Montserrat-ExtraBold"
//        case .light: font = "Montserrat-Light"
//        case .medium: font = "Montserrat-Regular"
//        case .semibold: font = "Montserrat-SemiBold"
//        case .thin: font = "Montserrat-Light"
//        case .ultraLight: font = "Montserrat-Light"
//        default: break
//        }
//        return Font.custom(font, size: size)
//    }
//}
