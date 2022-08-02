//
//  PlaylistView.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 10/11/21.
//

import SwiftUI

struct PlaylistView: View {
    
    @StateObject var playlistStore = PlaylistStore()

    var body: some View {
        VStack(alignment: .leading) {
            Divider()
                .background(.gray)
            HStack {
                Text("Playlists You Can't Miss")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                Spacer()
                Button("See All") {}
                .font(.system(size: 18))
                .foregroundColor(.pink)
            }
            .offset(x: 0, y: 5)
        }
        .padding([.leading, .trailing], 18)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(playlistStore.playlists) { playlist in
                    VStack(alignment: .leading) {
                        playlist.image
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 183, height: 178)
                            .background(.gray)
                            .cornerRadius(5)
                        Text(playlist.name)
                            .font(.system(size: 16))
                        Text(playlist.category)
                            .font(.system(size: 16))
                            .foregroundColor(Color(uiColor: .systemGray))
                    }
                }
            }
            .padding([.leading, .trailing], 18)
        }
        .offset(x: 0, y: 5)
        .padding(.bottom, 110)
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
