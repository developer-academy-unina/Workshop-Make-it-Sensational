//
//  Model.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 11/11/21.
//

import Foundation
import SwiftUI

struct Playlist: Identifiable {
    
    var id = UUID()
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var name: String
    var category: String
    
}
