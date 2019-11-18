//
//  SliderViewController.swift
//  homework-5
//
//  Created by Ilia Sahaidak on 18.11.2019.
//  Copyright © 2019 Ilia Sahaidak. All rights reserved.
//

import UIKit
extension UIColor {
   static var random: UIColor {
       return UIColor(red: .random(in: 0...1),
                      green: .random(in: 0...1),
                      blue: .random(in: 0...1),
                      alpha: 1.0)
   }
}

class SliderViewController: UIViewController {
    @IBOutlet weak var awesomeButton: UIButton!
    
    var backgroundSlider: UISlider?
    var backgroundView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundSlider = UISlider(frame: CGRect(x: 50, y: 100, width: 300, height: 50))
        backgroundSlider?.minimumValue = 0;
        backgroundSlider?.maximumValue = 1;
        backgroundSlider?.addTarget(self, action: #selector(slideValueChanged(_:)), for: .valueChanged)
        if let bgSlider = backgroundSlider {
            self.view.addSubview(bgSlider)
        }
    
        let bgViewRetc = CGRect(x: 50, y: 250, width: 300, height: 150)
        backgroundView = UIView(frame: bgViewRetc)
        backgroundView?.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        if let bgView = backgroundView {
            self.view.addSubview(bgView)
        }
        
        awesomeButton.setTitle("CLICK ME", for: .normal)
    }
    
   
    
    @objc func slideValueChanged(_ sender: UISlider) {
        backgroundView?.alpha = CGFloat(1 - sender.value)
        backgroundView?.layer.cornerRadius = CGFloat(sender.value * 20)
    }

    @IBAction func touchedOutside(_ sender: UIButton) {
        awesomeButton.backgroundColor = UIColor.random

    }
    @IBAction func touchedDown(_ sender: UIButton) {
        awesomeButton.tintColor = UIColor.random
    }
}
