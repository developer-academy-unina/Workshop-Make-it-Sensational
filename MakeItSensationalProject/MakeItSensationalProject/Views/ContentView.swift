//
//  ContentView.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 10/11/21.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                
                HeaderView()
                .padding([.leading, .trailing], 18)
                
                SuggestedView()
                .offset(x: 0, y: -10)
                
                PlaylistView()
                
            }
            .offset(x: 0, y: 15)
            
            CurrentSongView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
