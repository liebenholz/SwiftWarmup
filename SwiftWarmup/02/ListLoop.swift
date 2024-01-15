//
//  ListLoop.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/15/24.
//

import SwiftUI

struct Dessert: Hashable {
    let name: String
    let matchDessertName: String
    let price: Float
}

struct ListLoop: View {
    @State var favoriteDesserts = [
        Dessert(name: "Cupcake", matchDessertName: "Donut", price: 2.49),
        Dessert(name: "Donut", matchDessertName: "Cupcake", price: 0.99),
        Dessert(name: "Eclair", matchDessertName: "Donut", price: 1.99),
        Dessert(name: "Froyo", matchDessertName: "Gingerbread", price: 2.19),
        Dessert(name: "Gingerbread", matchDessertName: "Froyo", price: 0.79),
        Dessert(name: "Honeycomb", matchDessertName: "Eclair", price: 3.99),
    ]

    
//    var desserts: [String] = ["Cupcake", "Donut", "Eclair", "Froyo", "Gingerbread", "Honeycomb", "Ice-cream Sandwich", "Jellybean", "Kitkat", "Lollipop", "Marshmallow", "Nougat", "Oreo", "Pie", "Quince Tart", "Red Velvet Cake", "Snow Cone", "Tiramisu", "Upside Down Cake"]
    
    @State var dessertName: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Insert Dessert Name : ", text: $dessertName)
                    Button {
                        favoriteDesserts.append(Dessert(name: dessertName, matchDessertName: "Americano", price: 1.99))
                    } label: {
                        Text("Insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }.padding()
                
                
                List {
                    ForEach(favoriteDesserts, id: \.self) {
                        dessert in
                        VStack(alignment: .leading)
                        {
                            Text(dessert.name)
                            Text("Match: \(dessert.matchDessertName)")
                            Text("Cost: \(dessert.price)")
                        }
                    }
//                    .onDelete { indexSet in
//                        favoriteDesserts.remove(atOffsets: <#T##IndexSet#>)
//                    }
                }
                .navigationTitle("Dessert List")
            }
        }
    }
}

#Preview {
    ListLoop()
}
