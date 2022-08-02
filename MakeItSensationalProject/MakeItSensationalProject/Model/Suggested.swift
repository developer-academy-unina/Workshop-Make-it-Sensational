//
//  Suggested.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 11/11/21.
//

import Foundation
import SwiftUI

struct Suggested: Identifiable {
    
    var id = UUID()
    var category: String
    var title: String
    var artist: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}
