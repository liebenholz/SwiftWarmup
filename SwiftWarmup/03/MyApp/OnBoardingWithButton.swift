//
//  OnBoarding3.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct OnBoardingWithButton: View {
    
    @Binding var isPresented: Bool
    let onboardingTitle: String
    let imageSystemName: String
    
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                Image(systemName: imageSystemName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .foregroundColor(.white)
                Text(onboardingTitle)
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Button {
                    isPresented = false
                } label: {
                    Text("Continue")
                        .padding()
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    OnBoardingWithButton(isPresented: .constant(true), onboardingTitle: "This is Detail!", imageSystemName: "square.and.arrow.up")
}
