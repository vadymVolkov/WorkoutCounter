//
//  SettingsViewController.swift
//  WorkoutCounter
//
//  Created by Vadym Volkov on 21.05.2020.
//  Copyright © 2020 Vadym Volkov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:  UITableViewCell
        cell = tableView.dequeueReusableCell(withIdentifier: "Settings Cell", for: indexPath)
        cell.textLabel?.text = "Настройка"
        return cell
    }
    
    
}

extension SettingsViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView,
                    didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard!.instantiateViewController(identifier: "Settings Sub 1") as SettingsSubViewController
        navigationController?.pushViewController(vc, animated: true)
  
     }
}
