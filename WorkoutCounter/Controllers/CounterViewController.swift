//
//  CounterViewController.swift
//  WorkoutCounter
//
//  Created by Vadym Volkov on 21.05.2020.
//  Copyright © 2020 Vadym Volkov. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController {

    @IBOutlet weak var countsLabel: UILabel!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func minusButtonPressed(_ sender: Any) {
        let countsStr = countsLabel.text ?? "0"
        var countsInt = Int(countsStr)!
        if countsInt > 0 {
            countsInt -= 1
        }
        countsLabel.text = String(countsInt)
        
    }
    
    @IBAction func plusButtonPressed(_ sender: Any) {
        let countsStr = countsLabel.text ?? "0"
        var countsInt = Int(countsStr)!
        if countsInt < 20 {
            countsInt += 1
        }
        countsLabel.text = String(countsInt)
    }
    
    

}
