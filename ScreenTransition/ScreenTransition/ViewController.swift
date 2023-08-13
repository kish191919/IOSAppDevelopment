//
//  ViewController.swift
//  ScreenTransition
//
//  Created by Danny on 8/13/23.
//

import UIKit




class ViewController: UIViewController, SendDataDelegate{

    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else {return}
        viewController.modalPresentationStyle = .fullScreen //화면을 풀스크린으로 하기
        viewController.name = "Danny1"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else {return}
        viewController.name = "Danny2"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SuguePushViewControlerViewController{
            viewController.name = "아린, 하린"
        }
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    
    
}

