//
//  ViewController.swift
//  WorkoutCounter
//
//  Created by Vadym Volkov on 21.05.2020.
//  Copyright © 2020 Vadym Volkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var animationHelper = AnimationHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Start animation
        animationHelper.loadinScreen(imageView: imageView, animationDurationSpeed: 0.6)
        //After 2 sec tranfer to Main VC
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                    let tabBarController = self.storyboard!.instantiateViewController(withIdentifier: "Main View Controller")
                    self.present(tabBarController, animated: true, completion: nil)
           
               })
    }


}

