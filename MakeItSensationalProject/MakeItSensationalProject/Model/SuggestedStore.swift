//
//  SuggestedStore.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 11/11/21.
//

import SwiftUI

class SuggestedStore: ObservableObject {
    @Published var suggested: [Suggested] = [
        Suggested(
            category: "New single + pre-add now",
            title: "Materia (Terra)",
            artist: "Marco Mengoni",
            imageName: "Image0"
        ),
        Suggested(
            category: "Spatial audio",
            title: "Hear it like never before",
            artist: "Laura Pausini",
            imageName: "Image1"
        )
    ]
}
