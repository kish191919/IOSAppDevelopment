//
//  ViewController.swift
//  WiseWord
//
//  Created by Danny on 8/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapChangeColorButton(_ sender: UIButton) {
        self.colorView.backgroundColor=UIColor.blue
        print("색상 변경 버튼이 클릭되었음")
    }
}

