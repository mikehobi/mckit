//
//  SecondViewController.swift
//  ios-bootstrap
//
//  Created by Mike Hobizal on 12/4/18.
//  Copyright © 2018 Mike Hobizal. All rights reserved.
//

import UIKit
import AppCenterAnalytics

class SecondViewController: UIViewController {
    
    // Set title text and attributes in our init
    let titleLabel: UILabel = {
        let label = UILabel()
        let text = getAttributedText(string: "Second View", fontName: "HelveticaNeue-Medium", size: 48, lineHeight: 54, color: rgbColor(r: 255, g: 255, b: 255))
        label.attributedText = text
        return label
    }()
    
    // A Button
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        // Set background color
        self.view.backgroundColor = rgbColor(r: 75, g: 40, b: 45)
        
        // Add our title label
        self.view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        // Add a button
        button.setTitle("Go Back", for: .normal)
        button.addTarget(self, action: #selector(onButtonTap), for: .touchUpInside)
        self.view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
    }
    
    @objc func onButtonTap() {
        MSAnalytics.trackEvent("Dismissed the Modal!")
        self.dismiss(animated: true)
    }

}
