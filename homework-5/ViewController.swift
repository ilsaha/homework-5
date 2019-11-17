//
//  ViewController.swift
//  homework-5
//
//  Created by Ilia Sahaidak on 16.11.2019.
//  Copyright © 2019 Ilia Sahaidak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var backgroundSlider: UISlider?
    var backgroundView: UIView?
    
    @IBOutlet weak var valueToChange: UILabel!;
    @IBOutlet weak var segmentOutletLabel: UILabel!
    @IBOutlet weak var textFieldLabel: UILabel!
    @IBOutlet weak var sliderLabelOutlet: UILabel!
    @IBOutlet weak var spinButtonOutlet: UIButton!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var showImageButtonOutlet: UIButton!
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var spinnerOutlet: UIActivityIndicatorView!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var imageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderLabelOutlet.text = "Will change on slider drag"
        spinnerOutlet.stopAnimating()
        stepperOutlet.stepValue = 10.0
        imageOutlet.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func changeValue(_ sender: UIButton) {
        valueToChange.text = "New Value"
    }
    
    @IBAction func segmentTouched(_ sender: UISegmentedControl) {
        segmentOutletLabel.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        textFieldLabel.text = sender.text ?? ""
    }
    @IBAction func sliderDragged(_ sender: UISlider) {
        sliderLabelOutlet.text = String(sender.value)
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        sender.isOn ? (self.view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)) : (self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    }
    
    @IBAction func spinnerActivateTouched(_ sender: UIButton) {
        if spinnerOutlet.isAnimating {
            spinnerOutlet.stopAnimating()
            spinButtonOutlet.setTitle("Spin", for: .normal)
        } else {
            spinnerOutlet.startAnimating()
            spinButtonOutlet.setTitle("Stop", for: .normal)
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        stepperLabel.text = String(sender.value)
    }
    
    @IBAction func showImageTouched(_ sender: UIButton) {
        imageOutlet.isHidden = !imageOutlet.isHidden
        showImageButtonOutlet.setTitle(imageOutlet.isHidden ? "Show Image" : "Hide Image", for: .normal)
    }
    
}

