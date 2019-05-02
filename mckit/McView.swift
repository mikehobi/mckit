//
//  McView.swift
//  McKit
//
//  Created by Mike Hobizal on 4/30/19.
//  Copyright © 2019 Mike Hobizal. All rights reserved.
//

import UIKit

open class McView: UIView {
    public init() {
        super.init(frame: .zero)
        self.backgroundColor = .green
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
