//
//  MainViewController.swift
//  mckit
//
//  Created by Mike Hobizal on 11/30/18.
//  Copyright © 2018 Mike Hobizal. All rights reserved.
//

import UIKit
import AppCenterAnalytics

class MainViewController: UIViewController {

    // Set title text and attributes in our init
    let titleLabel: UILabel = {
        let label = UILabel()
        let text = getAttributedText(string: "iOS Starter", fontName: "HelveticaNeue-Medium", size: 48, lineHeight: 54, color: rgbColor(r: 255, g: 255, b: 255))
        label.attributedText = text
        return label
    }()
    
    // A description
    let descriptionLabel = UILabel()
    
    // A Button
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }

    func setup() {
        // Set background color
        self.view.backgroundColor = rgbColor(r: 22, g: 24, b: 25)
        
        // Add our title label
        self.view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-28)
            make.centerX.equalToSuperview()
        }
        
        // Set description text in our setup function
        let description = "A bootstrapped app project designed for programmatic development."
        descriptionLabel.text = description
        descriptionLabel.textAlignment = .center
        descriptionLabel.textColor = rgbColor(r: random255(), g: random255(), b: 200)
        descriptionLabel.numberOfLines = 0

        // Add our description label
        self.view.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().inset(28)
        }
        
        // Add our button
        button.setTitle("Go to Second View", for: .normal)
        button.addTarget(self, action: #selector(onButtonTap), for: .touchUpInside)
        self.view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
    }
    
    @objc func onButtonTap() {
        MSAnalytics.trackEvent("Clicked the button!")
        let destinationViewController = SecondViewController()
        self.present(destinationViewController, animated: true)
    }

}

