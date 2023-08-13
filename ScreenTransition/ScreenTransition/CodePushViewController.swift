//
//  CodePushViewController.swift
//  ScreenTransition
//
//  Created by Danny on 8/13/23.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
