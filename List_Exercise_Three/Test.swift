//
//  Test.swift
//  List_Exercise_Three
//
//  Created by AUNG KO LIN on 2024/06/14.
//

import SwiftUI

struct Test: View {
    var body: some View {
       
        VStack(alignment: .leading, spacing: 10) {
            
            Image("profile_img")
                .padding(.bottom, 10)
            Text("Hey!")
                .foregroundColor(.white)
            Text("A.K.L")
                .font(.title2.bold())
                .foregroundColor(.white)
                .padding(.bottom)
            
            List {
                HStack {
                    Spacer()
                    Label("Profile", systemImage: "person")
                }
                HStack {
                    Spacer()
                    Label("Home Page", systemImage: "house")
                }
                HStack {
                    Spacer()
                    Label("My Cart", systemImage: "cart")
                }
                HStack {
                    Spacer()
                    Label("Favourite", systemImage: "heart")
                }
                HStack {
                    Spacer()
                    Label("Orders", systemImage: "car")
                }
                HStack {
                    Spacer()
                    Label("Notification", systemImage: "bell")
                }
                HStack {
                    Spacer()
                    Label("SignOut", systemImage: "rectangle.portrait.and.arrow.forward")
                }
            }
            .listStyle(.plain)
            .font(.title3.bold())
            .tint(.secondary)
            .foregroundColor(.white)
            .frame(height: CGFloat(7 * 44)) // Estimate height based on 7 items and default row height
        }
        .padding()
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
#Preview {
    Test()
}
