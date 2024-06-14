//
//  NotificationView.swift
//  List_Exercise_Three
//
//  Created by AUNG KO LIN on 2024/06/14.
//
import SwiftUI

struct Shoe{
    let name: String
    let title: String
    let price: String
    let salePrice: String
}

struct NotificationView: View {
    let shoes: [Shoe] = [
        .init(name: "shoe1", title: "We Have New Proucts With Offers", price: "$364.95", salePrice: "$260.00"),
        .init(name: "shoe2", title: "We Have New Proucts With Offers", price: "$364.95", salePrice: "$260.00")
        
    ]
    let yesterdayShoes: [Shoe] = [
        .init(name: "shoe3", title: "We Have New Proucts With Offers", price: "$364.95", salePrice: "$260.00"),
        .init(name: "shoe4", title: "We Have New Proucts With Offers", price: "$364.95", salePrice: "$260.00")
        
    ]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Today").font(.title3).bold()){
                    ForEach(shoes, id: \.name) { shoe in
                        HStack(){
                            Image(shoe.name)
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 20))
                            VStack(alignment: .leading, spacing: 20){
                                Text(shoe.title)
                                    .font(.system(size: 18).bold())
                                HStack{
                                    Text(shoe.price)
                                    Text(shoe.salePrice)
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                    }
                    
                }
                Section(header: Text("Yesterday").font(.title3).bold()){
                    ForEach(yesterdayShoes, id: \.name) { shoe in
                        HStack(){
                            Image(shoe.name)
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 20))
                            VStack(alignment: .leading, spacing: 20){
                                Text(shoe.title)
                                    .font(.system(size: 18).bold())
                                HStack{
                                    Text(shoe.price)
                                    Text(shoe.salePrice)
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                    }
                    
                }
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItem() {
                    Text("Notifications")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding(.horizontal,50)
                    
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "chevron.left")
                    }
                    .foregroundColor(.white)
                    .background(
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.secondary)
                    )
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Clear All") {
                        
                    }
                }
            }
        }
        
    }
    
}
#Preview {
    NotificationView()
}


