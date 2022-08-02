//
//  PlaylistStore.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 11/11/21.
//

import SwiftUI

class PlaylistStore: ObservableObject {
    @Published var playlists: [Playlist] = [
        Playlist(
            imageName: "Playlist0",
            name: "Pop Hits Italia",
            category: "Apple Music Pop Italiano"
        ),
        Playlist(
            imageName: "Playlist1",
            name: "RapIT",
            category: "Apple Music Rap Italiano"
        ),
        Playlist(
            imageName: "Playlist2",
            name: "Today's Hits",
            category: "Apple Music"
        )
    ]
}
