//
//  LayoutView.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/15/24.
//

import SwiftUI

struct LayoutView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            MyText(textName: "Text Element 1", textFont: .headline).bold()
            MyText(textName: "Text Element 2", textFont: .subheadline)
            MyText(textName: "Text Element 3", textFont: .body)
            
            HStack {
                MyButton(buttonName: "Button 1", buttonColor: .blue)
                MyButton(buttonName: "Button 2", buttonColor: .green)
            }
            Button {
                // action
            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundStyle(.white)
                .padding()
                .background(.orange)
                .foregroundStyle(.white)
                .font(.headline)
                .cornerRadius(10)
                .bold()
            }
        }
    }
}

#Preview {
    LayoutView()
}
