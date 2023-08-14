//
//  ViewController.swift
//  LEDBoard
//
//  Created by Danny on 8/13/23.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingBelegate {

    @IBOutlet weak var contentsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.contentsLabel.textColor = .yellow
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingviewController = segue.destination as? SettingViewController{
            settingviewController.delegate = self
            settingviewController.ledText = self.contentsLabel.text
            settingviewController.textColor = self.contentsLabel.textColor
            settingviewController.backgroundColor = self.view.backgroundColor ?? .black
            
        }
    }
    
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.contentsLabel.text = text
        }
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
    
    
    
    


}

