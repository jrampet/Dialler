//
//  RoundButton.swift
//  Navigation Controller
//
//  Created by Jeyaram on 30/04/21.
//

import UIKit
@IBDesignable
class RoundButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBInspectable var roundButton: Bool = false{
        didSet{
            round()
        }
    }
    override func prepareForInterfaceBuilder() {
        round()
    }
    func round(){
        if roundButton{
            layer.cornerRadius = frame.height/2
        }
    }
}
