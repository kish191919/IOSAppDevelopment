//
//  CodePresentViewController.swift
//  ScreenTransition
//
//  Created by Danny on 8/13/23.
//

import UIKit
protocol SendDataDelegate : AnyObject {
    func sendData (name: String)
}


class CodePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func tapBackButtom(_ sender: UIButton) {
        self.delegate?.sendData(name: "이현주1")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
