//
//  AppleMusicButton.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 10/11/21.
//

import SwiftUI

struct AppleMusicButton: View {
    var body: some View {
        VStack(alignment: .center) {
            Text(" Music")
                .font(.system(size: 23))
                .fontWeight(.bold)
            Text("Try it now and get 3 months free")
                .font(.system(size: 16.5))
        }
        .frame(minWidth: 377, idealWidth: 377, maxWidth: .infinity, minHeight: 64, idealHeight: 64, maxHeight: 64, alignment: .center)
        .foregroundColor(.white)
        .background(.pink)
        .cornerRadius(16)
    }
}

struct AppleMusicButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleMusicButton()
    }
}
