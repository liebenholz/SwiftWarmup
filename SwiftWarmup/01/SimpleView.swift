//
//  SimpleView.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/15/24.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            Text("Headline")
                .font(.headline)
                .bold()
                .padding()
            
            Text("Sub headline")
                .font(.subheadline)
                .padding()
            
            Text("Body")
                .font(.body)
                .padding()
            
            Button{
                
            } label: {
                // 모디파이어의 순서에 따라 그림이 바뀜
                Text("Button")
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    .bold()
            }
            
        }
    }
}

#Preview {
    SimpleView()
}
