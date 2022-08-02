//
//  TabBarView.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 10/11/21.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        let tabBarAppeareance = UITabBarAppearance()
        tabBarAppeareance.shadowColor = .gray // For line separator of the tab bar
        tabBarAppeareance.backgroundColor = .systemGray5 // For background color
        UITabBar.appearance().standardAppearance = tabBarAppeareance
    }
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image("LibraryIcon")
                        .renderingMode(.template)
                    Text("Library")
                }
            
            ContentView()
                .tabItem {
                    Label("Listen Now", systemImage: "play.circle.fill")
                }
            
            ContentView()
                .tabItem {
                    Label("Browse", systemImage: "square.grid.2x2.fill")
                }
            
            ContentView()
                .tabItem {
                    Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                }
            
            ContentView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
        .accentColor(.pink)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
