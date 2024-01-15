//
//  MyButton.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/15/24.
//

import SwiftUI

struct MyButton: View {
    var buttonName: String
    var buttonColor: Color
    
    var body: some View {
        Button {
          // action
        } label: {
            // 모디파이어의 순서에 따라 그림이 바뀜
            Text(buttonName)
                .padding()
                .background(buttonColor)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .bold()
        }
    }
}

#Preview {
    MyButton(buttonName: "Button 0", buttonColor: .red)
}
