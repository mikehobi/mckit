//
//  UIImage+makeFullWidth.swift
//  ios-bootstrap
//
//  Created by Thomas Bruketta on 10/22/18.
//  Copyright © 2018 Instrument Marketing. All rights reserved.
//

import UIKit
import SnapKit

extension UIImageView {
    
    // TODO: Add more widths like superview
    func makeFullWidth() {

        let deviceWidth = UIScreen.main.bounds.width
        
        guard let image = self.image else {
            return
        }
        
        let ratio = getImageRatio(image)
        self.snp.makeConstraints { make in
            make.width.equalTo(deviceWidth)
            make.height.equalTo(deviceWidth * ratio)
        }
    }
}
