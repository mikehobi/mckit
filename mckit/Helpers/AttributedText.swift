//
//  AttributedText.swift
//  mckit
//
//  Created by Christopher Lindor on 7/30/18.
//  Copyright © 2018 Instrument Marketing. All rights reserved.
//

import UIKit

func getAttributedText(string: String, font: UIFont = UIFont.systemFont(ofSize: 12), lineHeight: CGFloat = 26, color: UIColor? = nil) -> NSAttributedString {
    let attributedString = NSMutableAttributedString(string: string)
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.maximumLineHeight = lineHeight
    paragraphStyle.minimumLineHeight = lineHeight
    let fullStringRange = NSRange(location: 0, length: attributedString.length)
    attributedString.addAttribute(.paragraphStyle, value:paragraphStyle, range: fullStringRange)
    attributedString.addAttribute(.kern, value: 0.22, range: fullStringRange)
    attributedString.addAttribute(.font, value: font, range: fullStringRange)
    
    if let textColor = color {
        attributedString.addAttribute(.foregroundColor, value: textColor, range: fullStringRange)
    }
    
    return attributedString
}

func getAttributedText(string: String, fontName: String, size: CGFloat, lineHeight: CGFloat = 26, color: UIColor? = nil) -> NSAttributedString {
    guard let font = UIFont(name: fontName, size: size) else {
        fatalError("Wrong")
    }
    let attributedString = NSMutableAttributedString(string: string)
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.maximumLineHeight = lineHeight
    paragraphStyle.minimumLineHeight = lineHeight
    let fullStringRange = NSRange(location: 0, length: attributedString.length)
    attributedString.addAttribute(.paragraphStyle, value:paragraphStyle, range: fullStringRange)
    attributedString.addAttribute(.kern, value: 0.22, range: fullStringRange)
    attributedString.addAttribute(.font, value: font, range: fullStringRange)
    
    if let textColor = color {
        attributedString.addAttribute(.foregroundColor, value: textColor, range: fullStringRange)
    }
    
    return attributedString
}
