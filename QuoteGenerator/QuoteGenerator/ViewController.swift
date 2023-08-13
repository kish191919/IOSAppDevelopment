//
//  ViewController.swift
//  QuoteGenerator
//
//  Created by Danny on 8/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var quotelabel: UILabel!
    
    let quotes = [
        Quote(contents: "45세에 100억 벌기", name: "이현주"),
        Quote(contents: "젊을때 빠르게 부자가 되자", name: "기성환"),
        Quote(contents: "건강이 최고다", name: "장모님"),
        Quote(contents: "탁구치며 놀자", name: "잘생긴 오빠"),
        Quote(contents: "추월차선이 있다", name: "젊은CEO"),
        Quote(contents: "오늘이 내 남은 인생의 가장 젊은 날이다", name: "Danny")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(6)) // 0-4 의 랜덤한 숫자 1개 생성
        let quote = quotes[random]
        self.quotelabel.text = quote.contents
        self.namelabel.text = quote.name
    }
    
}

