//
//  ContentView.swift
//  List_Exercise_Three
//
//  Created by AUNG KO LIN on 2024/06/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment:.leading, spacing: 10){
            VStack{
                // TODO: - profile image + name view has to be inside List view as a header content
                Image("profile_img")
                    .padding(.bottom, 10)
                Text("Hey!")
                
                Text("A.K.L")
                    .font(.title2.bold())
                    .padding(.bottom)
            }
            .padding()
                List{
                    // TODO: - don't add list items inside VStack. Please create an object for each menu item and create an array of menu items array and use ForEach loop here
                    VStack(alignment:.leading, spacing: 25){
                        Label("Profile", systemImage: "person")
                        Label("Home Page", systemImage: "house")
                        Label("My Cart", systemImage: "cart")
                        Label("Favourite", systemImage: "heart")
                        Label("Orders", systemImage: "car")
                        Label("Notification", systemImage:
                                "bell")
                        Spacer()
                        Label("SignOut", systemImage: "rectangle.portrait.and.arrow.forward")
                    }
                }
                
                .listStyle(.plain)
                .font(.title3.bold())
                .tint(.secondary)
            
        }
    }
}
#Preview {
    ContentView()
}


