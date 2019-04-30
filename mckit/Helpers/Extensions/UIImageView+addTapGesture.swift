//
//  UIImage+addTapGesture.swift
//  mckit
//
//  Created by Thomas Bruketta on 10/22/18.
//  Copyright © 2018 Instrument Marketing. All rights reserved.
//

import UIKit

extension UIImageView {
    func addTapGesture(target: Any?, action: Selector) {
        let tapGesture = UITapGestureRecognizer(target: target, action: action)
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(tapGesture)
    }
}
