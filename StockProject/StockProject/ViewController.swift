//
//  ViewController.swift
//  StockProject
//
//  Created by Danny on 8/29/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var stockPriceLabel: UILabel!
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startUpdatingStockPrice()
    }
    
    // 주식 가격 업데이트 시작
    func startUpdatingStockPrice() {
        // 타이머를 설정하여 주식 가격을 일정 간격으로 업데이트
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateStockPrice), userInfo: nil, repeats: true)
        timer?.fire() // 타이머 시작
    }
    
    // 랜덤한 주식 가격 생성 및 업데이트
    @objc func updateStockPrice() {
        let randomPrice = Double.random(in: 100.0...200.0) // 랜덤한 가격 생성 (예시 범위)
        let formattedPrice = String(format: "%.2f", randomPrice) // 가격 형식을 소수점 2자리까지로 포맷
        stockPriceLabel.text = "$" + formattedPrice // 레이블에 가격 표시
    }
    
    // 타이머 정지
    func stopUpdatingStockPrice() {
        timer?.invalidate()
        timer = nil
    }


}

