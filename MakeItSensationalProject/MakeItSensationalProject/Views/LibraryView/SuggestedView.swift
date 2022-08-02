//
//  BrowseView.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 10/11/21.
//

import SwiftUI

struct SuggestedView: View {
    @StateObject var suggestedStore = SuggestedStore()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(suggestedStore.suggested) { suggestion in
                    VStack(alignment: .leading) {
                        Text(suggestion.category.uppercased())
                            .font(.system(size: 12))
                            .foregroundColor(.secondary)
                        Text(suggestion.title.uppercased())
                            .font(.system(size: 23))
                            .fontWeight(.medium)
                        Text(suggestion.artist)
                            .font(.system(size: 23))
                            .foregroundColor(.secondary)
                        suggestion.image
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 364, height: 253)
                            .background(.gray)
                            .cornerRadius(5)
                    }
                }
            }
            .padding([.leading, .trailing], 18)
        }
    }
}

struct SuggestedView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedView()
    }
}
