//
//  IconSet.swift
//  ChangeAppIconProject
//
//  Created by Luca Palmese for the Developer Academy on 15/11/21.
//

import Foundation
import SwiftUI

class IconSet: ObservableObject {
    
    var iconNames : [String?] = [nil]
    @Published var selectedIconName: String?
    
    init() {
        self.getIconNames()
        if let currentIcon = UIApplication.shared.alternateIconName {
            self.selectedIconName = currentIcon
        }
    }
    
    func getIconNames() {
        if let icons = Bundle.main.object(forInfoDictionaryKey: "CFBundleIcons") as? [String : Any],
           let alternateIcons = icons["CFBundleAlternateIcons"] as? [String : Any] {
            for(_, value) in alternateIcons {
                guard let iconList = value as? Dictionary<String, Any> else {return}
                guard let iconFiles = iconList["CFBundleIconFiles"] as? [String] else {return}
                guard let iconName = iconFiles.first else {return}
                iconNames.append(iconName)
            }
            iconNames = iconNames.sorted { firstElement, secondElement in
                guard firstElement != nil, secondElement != nil else {
                    return true
                }
                return firstElement! < secondElement!
            }
        }
    }
    
}
