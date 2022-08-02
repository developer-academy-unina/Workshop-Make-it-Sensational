//
//  customButton.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 14/11/21.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        Image(systemName: "star.fill")
            .resizable()
            .frame(width: 300, height: 300, alignment: .center)
            .foregroundColor(Color.customColor)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton().preferredColorScheme(.light)
        CustomButton().preferredColorScheme(.dark)
    }
}
