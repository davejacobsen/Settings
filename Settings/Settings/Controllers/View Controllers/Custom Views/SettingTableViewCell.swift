//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by David on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

   //MARK: - Outlets
    @IBOutlet weak var settingIconImageView: UIImageView!
    
    @IBOutlet weak var settingNameLabel: UILabel!
    
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //MARK: - Actions
    
    @IBAction func settingsSwitchToggled(_ sender: Any) {
        //TODO
    }
    
    //MARK: - Helper methods
    
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.settingTitle
        settingSwitch.isOn = settingSwitch.isOn
        //ternary oporerator
        backgroundColor = setting.isOn ? .cyan : .white
        
    }
    
}
