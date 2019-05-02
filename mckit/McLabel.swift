//
//  McLabel.swift
//  McKit
//
//  Created by Mike Hobizal on 5/2/19.
//  Copyright © 2019 Mike Hobizal. All rights reserved.
//

import UIKit

open class McLabel: UILabel {
    public init() {
        super.init(frame: .zero)
        self.backgroundColor = .yellow
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
