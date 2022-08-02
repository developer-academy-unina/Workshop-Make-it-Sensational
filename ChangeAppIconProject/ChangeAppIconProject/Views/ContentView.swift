//
//  ContentView.swift
//  ChangeAppIconProject
//
//  Created by Luca Palmese for the Developer Academy on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var iconSet : IconSet
    
    init() {
        UITableViewCell.appearance().backgroundColor = .white
        UITableView.appearance().backgroundColor = .white
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.iconSet.iconNames, id: \.self) { iconName in
                    Button(action:{
                        if iconSet.selectedIconName != iconName {
                            iconSet.selectedIconName = iconName
                            UIApplication.shared.setAlternateIconName(iconSet.selectedIconName,
                                                                      completionHandler: { error in
                                if let error = error {
                                    print(error.localizedDescription)
                                } else {
                                    print("Success!")
                                }
                            })
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(uiImage: UIImage(named: iconName ?? "AppIcon") ?? UIImage())
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 50, height: 50)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(color: iconName == "iOS 8_4" ? Color.init(uiColor: .systemGray4) : .clear, radius: 7, x: 0, y: 2)
                            Text(iconName?.replacingOccurrences(of: "_", with: ".") ?? "iOS 14")
                                .foregroundColor(.primary)
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: iconSet.selectedIconName == iconName ? "largecircle.fill.circle" : "circle")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                        .padding([.top, .bottom], 5)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .offset(x: 0, y: 20)
            .accentColor(Color.init(uiColor: .systemGray2))
            .navigationTitle("Change App Icon")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
