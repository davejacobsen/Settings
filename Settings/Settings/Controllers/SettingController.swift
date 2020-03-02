//
//  ModelController.swift
//  Settings
//
//  Created by David on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class settingController {
    
    //MARK: - Source of truth
    let settings: [Setting] = {
        let music = Setting(settingTitle: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(settingTitle: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let books = Setting(settingTitle: "Books", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        return [music, appStore, books]
    }()
    
    //MARK: - Methods
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
