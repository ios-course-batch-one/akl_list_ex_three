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
                
                Image("profile_img")
                    .padding(.bottom, 10)
                Text("Hey!")
                
                Text("A.K.L")
                    .font(.title2.bold())
                    .padding(.bottom)
            }
            .padding()
            
            
                List{
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


