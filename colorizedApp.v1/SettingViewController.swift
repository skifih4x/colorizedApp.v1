//
//  SettingViewController.swift
//  colorizedApp.v1
//
//  Created by Артем Орлов on 07.02.2022.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redTextLabel: UILabel!
    @IBOutlet var greenTextLabel: UILabel!
    @IBOutlet var blueTextLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 15
        
       setColor()
        
        setValue(for: redTextLabel, greenTextLabel, blueTextLabel)
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider:
            redTextLabel.text = string(from: redSlider)
        case greenSlider:
            greenTextLabel.text = string(from: greenSlider)
        default:
            blueTextLabel.text = string(from: blueSlider)
        }
        
        switch sender {
        case redSlider:
            redTextField.text = string(from: redSlider)
        case greenSlider:
            greenTextField.text = string(from: greenSlider)
        default:
            blueTextField.text = string(from: blueSlider)
        }
    }
    
    private func setColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redTextLabel:
                redTextLabel.text = string(from: redSlider)
            case greenTextLabel:
                greenTextLabel.text = string(from: greenSlider)
            default:
                blueTextLabel.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
