//
//  Utilities.swift
//  ios-bootstrap
//
//  Created by Mike Hobizal on 12/4/18.
//  Copyright © 2018 Mike Hobizal. All rights reserved.
//

import UIKit

// Normalizes from 255 to 1
func rgbColor(r: CGFloat, g: CGFloat, b:  CGFloat, a: CGFloat = 1) -> UIColor {
    return UIColor(red: r/255, green: g/255, blue: b/255, alpha: a)
}

func random255() -> CGFloat {
    // Random between 30 - 225
    return CGFloat(arc4random_uniform(256) + 0);
}

extension FloatingPoint {
    var degreesToRadians : Self {
        return self * .pi / 180
    }
    var radiansToDegrees : Self {
        return self * 180 / .pi
    }
}

func getImageRatio(_ image: UIImage) -> CGFloat {
    let imageHeight = image.size.height
    let imageWidth = image.size.width
    return imageHeight / imageWidth
}
