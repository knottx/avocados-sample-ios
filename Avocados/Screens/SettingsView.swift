//
//  SettingsView.swift
//  Avocados
//
//  Created by Visarut Tippun on 14/4/22.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification: Bool = false
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"),
                            radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            } //: VStack
            .padding()
            
            Form {
                Section {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                } header: {
                    Text("General Settings")
                }
                
                Section {
                    HStack {
                        Text("Product")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("Avocado Recipes")
                    }
                    
                    HStack {
                        Text("Compatibility")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("iPhone & iPad")
                    }
                    
                    HStack {
                        Text("Developer")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("Knot / knottx")
                    }
                    
                    HStack {
                        Text("Version")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("1.0.0")
                    }
                } header: {
                    Text("Application")
                }

            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
