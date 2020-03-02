//
//  SettingListTableViewController.swift
//  Settings
//
//  Created by David on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit



class SettingListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return settingController.settings.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}
        let setting = settingController.settings[indexPath.row]
        cell.updateViews(with: setting)
        // THIS IS STEP 4. ASSIGN THE DELEGATE
        cell.delegate = self
        return cell
    }
} //End of class


extension SettingListTableViewController: SettingTableViewCellDelegate {
    func settingSwitchTapped(for cell: SettingTableViewCell) {
        // Goal: tableVC needs to update the ModelController to update isON then the cell needs to udpdate itself based on the new settings info
        guard  let index = tableView.indexPath(for: cell) else {return}
         let setting = settingController.settings[index.row]
        settingController.toggleIsOn(for: setting)
        cell.updateViews(with: setting)
        
    }
}
