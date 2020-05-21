//
//  ExerciseViewController.swift
//  WorkoutCounter
//
//  Created by Vadym Volkov on 21.05.2020.
//  Copyright © 2020 Vadym Volkov. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}

extension ExerciseViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:  UITableViewCell
        cell = tableView.dequeueReusableCell(withIdentifier: "Exercise Cell", for: indexPath)
        cell.textLabel?.text = "Упражнение"
        return cell
    }
    
    
}
