//
//  OnBoarding3.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct OnBoardingWithButtom: View {
    
    @Binding var isPresented: Bool
    let onboardingTitle: String
    let imageSystemName: String
    
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: imageSystemName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Text(onboardingTitle)
                    .padding()
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
    OnBoarding3(isPresented: .constant(true), onboardingTitle: "This is Detail!", imageSystemName: "square.and.arrow.up")
}
