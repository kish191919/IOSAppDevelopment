//
//  SuguePushViewControlerViewController.swift
//  ScreenTransition
//
//  Created by Danny on 8/13/23.
//

import UIKit

class SuguePushViewControlerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
