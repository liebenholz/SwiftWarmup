//
//  OnBoarding.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/15/24.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        VStack {
            MyText(textName: "What's new in Photos", textFont: .system(size: 33).bold())
                .padding()
                .padding(.top, 30)
            VStack {
                MyDescription(myImage: Image(systemName: "person.2"), 
                              myTitle: "Shared Library",
                              myBody: "Combine photos and videos with people.")
                MyDescription(myImage: Image(systemName: "slider.horizontal.2.square.on.square"),
                              myTitle: "Copy & Paste Edits",
                              myBody: "Combine photos and videos with people.")
                MyDescription(myImage: Image(systemName: "square.on.square"),
                              myTitle: "Merge Duplicates",
                              myBody: "Combine photos and videos with people.")
            }
        }
        
        Spacer()
        
        Button {
            // action
        } label: {
            Text("Continue")
                .padding()
                .frame(width:300)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding(.bottom, 60)
    }
}

#Preview {
    OnBoarding()
}
