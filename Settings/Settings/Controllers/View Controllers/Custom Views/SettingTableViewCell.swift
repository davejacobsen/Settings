//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by David on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    //Step 1. the protocol just states what has to happen and not how so we dont open the scope of the function
func settingSwitchTapped(for cell: SettingTableViewCell)
}


class SettingTableViewCell: UITableViewCell {

   //MARK: - Outlets
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //MARK: - Properties
    weak var delegate: SettingTableViewCellDelegate?
    
    //MARK: - Actions
    
    @IBAction func settingsSwitchToggled(_ sender: Any) {
        //TODO
        delegate?.settingSwitchTapped(for: self)
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
