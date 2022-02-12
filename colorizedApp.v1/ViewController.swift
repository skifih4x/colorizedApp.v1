//
//  ViewController.swift
//  colorizedApp.v1
//
//  Created by Артем Орлов on 07.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redTextLabel: UILabel!
    @IBOutlet var greenTextLabel: UILabel!
    @IBOutlet var blueTextLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
        
    }
    
    @IBAction func redSliderAction() {
        
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        
        mainView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
        
        redTextLabel.text = String(redSlider.value)
        greenTextLabel.text = String(greenSlider.value)
        blueTextLabel.text = String(blueSlider.value)
        
        redTextLabel.text = String(format: "%.2f", redSlider.value)
        greenTextLabel.text = String(format: "%.2f", greenSlider.value)
        blueTextLabel.text = String(format: "%.2f", blueSlider.value)
    }
}
