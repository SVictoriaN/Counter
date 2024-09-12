//
//  ViewController.swift
//  Counter
//
//  Created by Виктория Сяткина on 11.09.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak private var counterValueLabel: UILabel!
    
    @IBOutlet weak private var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private var counterValue: String?
    
    @IBAction func buttonDidTap(_ sender: Any) {
        if let currentCounterValue = Int(counterValue ?? "0") {
            let newCounterValue = currentCounterValue + 1
            counterValue = String(newCounterValue)
        } else {
            counterValue = "0"
        }
        counterValueLabel.text = counterValue
    }
}

