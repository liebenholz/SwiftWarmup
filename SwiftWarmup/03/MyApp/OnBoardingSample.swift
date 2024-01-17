//
//  OnBoarding1.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct OnBoardingSample: View {
    
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
            }
        }
    }
}

#Preview {
    OnBoardingSample(onboardingTitle: "This is Detail!", imageSystemName: "square.and.arrow.up")
}
