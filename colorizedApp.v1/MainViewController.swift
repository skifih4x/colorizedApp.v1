//
//  MainViewController.swift
//  colorizedApp.v1
//
//  Created by Артем Орлов on 23.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else {return}
        settingVC.viewColorSetting = view.backgroundColor
    }
    
    @IBAction func settingButtonNavBar() {
    }
}
