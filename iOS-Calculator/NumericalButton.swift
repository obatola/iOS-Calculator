//
//  NumericalButton.swift
//  iOS-Calculator
//
//  Found on http://stackoverflow.com/questions/24263007/how-to-use-hex-colour-values-in-swift-ios
//  Copyright © 2016 Obatola Seward-Evans. All rights reserved.
//

import UIKit

class NumericalButton: UIButton {
    
    // Mark: Properties
    var colorManager = ColorManager.sharedInstance
    let screenSize: CGRect = UIScreen.mainScreen().bounds
    var buttonColor: UIColor
    var highlightColor: UIColor
    var textColor: UIColor
    
    
    required init?(coder aDecoder: NSCoder) {
        buttonColor = colorManager.getColor(ColorType.NumericalButton)
        highlightColor = colorManager.getColor(ColorType.ButtonHighlight)
        textColor = colorManager.getColor(ColorType.Text)
        
        super.init(coder: aDecoder)
        
        self.setBackgroundImage(Color.imageWithColor(buttonColor), forState: UIControlState.Normal)
        self.setBackgroundImage(Color.imageWithColor(highlightColor), forState: UIControlState.Highlighted)

        self.setTitleColor(textColor, forState: UIControlState.Normal)
    }
    
    override func setNeedsDisplay() {
        super.setNeedsDisplay()
        
        initColor()
        
        self.setBackgroundImage(Color.imageWithColor(buttonColor), forState: UIControlState.Normal)
        self.setBackgroundImage(Color.imageWithColor(highlightColor), forState: UIControlState.Highlighted)
        
        self.setTitleColor(textColor, forState: UIControlState.Normal)

    }
    
    // MARK: Helper Functions
    
    func initColor() {
        buttonColor = colorManager.getColor(ColorType.NumericalButton)
        highlightColor = colorManager.getColor(ColorType.ButtonHighlight)
        textColor = colorManager.getColor(ColorType.Text)
    }
}
