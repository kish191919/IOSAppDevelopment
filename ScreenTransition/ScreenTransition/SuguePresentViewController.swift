//
//  SuguePresentViewController.swift
//  ScreenTransition
//
//  Created by Danny on 8/13/23.
//

import UIKit

class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func tapBackBotton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
