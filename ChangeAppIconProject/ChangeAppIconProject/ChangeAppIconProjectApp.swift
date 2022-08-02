//
//  ChangeAppIconProjectApp.swift
//  ChangeAppIconProject
//
//  Created by Luca Palmese for the Developer Academy on 15/11/21.
//

import SwiftUI

@main
struct ChangeAppIconProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(IconSet())
        }
    }
}
