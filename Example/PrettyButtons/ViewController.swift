//
//  ViewController.swift
//  PrettyButtons
//
//  Created by chrisfromtemporaryid@gmail.com on 07/06/2018.
//  Copyright (c) 2018 chrisfromtemporaryid@gmail.com. All rights reserved.
//

import UIKit
import PrettyButtons

class ViewController: UIViewController {
    /// A nice blue color.
    private static let niceBlue = UIColor(red: 0.29, green: 0.46, blue: 0.91, alpha: 1)
    
    /// A nice orange color.
    private static let niceOrange = UIColor(red: 0.90, green: 0.70, blue: 0.16, alpha: 1)

    /// Creates a view in the center and buttons for touch-feedback.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a view in the center
        let centerView = UIView()
        view.addSubview(centerView)
        centerView.copy(.centerX, .centerY, of: view)
        centerView.copy(.width, of: view).withMultiplier(0.75)
        centerView.copy(.height, of: view).withMultiplier(0.75)
        
        // Then create the buttons that will be in the center view
        let noStyleButton = PrettyButton()
        noStyleButton.setTitle("No Style", for: .normal)
        let slideStyleButton = PrettyButton(style: .slide)
        slideStyleButton.setTitle("Slide ->", for: .normal)
        let bloomStyleButton = PrettyButton(style: .bloom)
        bloomStyleButton.setTitle("Bloom <^>", for: .normal)
        let fadeStyleButton = PrettyButton(style: .fade)
        fadeStyleButton.setTitle("Fade *", for: .normal)
        
        let buttons = [noStyleButton, slideStyleButton, bloomStyleButton, fadeStyleButton]
        for button in buttons {
            centerView.addSubview(button)
            
            button.copy(.left, .right, of: centerView)
            button.backgroundColor = ViewController.niceBlue
            button.overlayColor = ViewController.niceOrange
        }
        
        centerView.fill(.topToBottom, withViews: buttons, withSpacing: 15)
    }
}

