//
//  McView.swift
//  McKit
//
//  Created by Mike Hobizal on 4/30/19.
//  Copyright © 2019 Mike Hobizal. All rights reserved.
//

import UIKit

public class McView: UIView {
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
