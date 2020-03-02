//
//  Setting.swift
//  Settings
//
//  Created by David on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

/** Creates our Setting Object - *MODEL*
 - Properties:
    - settingTitle: The 'String' identifier for the Setting
    - icon: 
 
 */


class Setting {
    let settingTitle: String
    let icon: UIImage
    var isOn: Bool
    
    init(settingTitle: String, icon: UIImage, isOn: Bool) {
        self.settingTitle = settingTitle
        self.icon = icon
        self.isOn = isOn
    }
}
