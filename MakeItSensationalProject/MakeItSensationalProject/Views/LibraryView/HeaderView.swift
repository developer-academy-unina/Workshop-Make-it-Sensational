//
//  HeaderView.swift
//  MakeItSensationalProject
//
//  Created by Luca Palmese and Gianluca Orpello for the Developer Academy on 10/11/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                let feedback = UINotificationFeedbackGenerator()
                feedback.notificationOccurred(.success)
            } label: {
                AppleMusicButton()
            }
            Text("Browse")
                .font(.system(size: 35))
                .fontWeight(.bold)
            Divider()
                .background(.gray)
                .offset(x: 0, y: -15)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
