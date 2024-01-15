//
//  MyDescription.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/15/24.
//

import SwiftUI

struct MyDescription: View {
    
    var myImage: Image
    var myTitle: String
    var myBody: String
    
    var body: some View {
        HStack {
            myImage.resizable()
                .scaledToFit()
                .frame(width: 35)
                .padding(.leading, 4)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                Text(myTitle)
                    .font(.headline)
                Text(myBody)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            .padding(.trailing)
        }
        .padding(.vertical)
    }
}

#Preview {
    MyDescription(myImage: Image(systemName: "person"), myTitle: "Title 0", myBody: "Body 0")
}
