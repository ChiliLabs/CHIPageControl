//
//  UIColor+Utils.swift
//  CHIPageControl
//
//  Created by Yauheni Klishevich on 22.02.2021.
//

import UIKit

extension UIColor {
    
    /// Returns `nil` if retrieving alpha component was impossible.
    var alphaComponent: CGFloat? {
        var alpha: CGFloat = 0
        if getRed(nil, green: nil, blue: nil, alpha: &alpha) {
            return alpha
        }
        else {
            return nil
        }
    }
    
}
