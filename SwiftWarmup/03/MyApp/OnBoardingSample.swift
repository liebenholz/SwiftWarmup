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
            VStack {
                Image(systemName: imageSystemName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Text(onboardingTitle)
                    .padding()
            }
        }
    }
}

#Preview {
    OnBoardingSample(onboardingTitle: "This is Detail!", imageSystemName: "square.and.arrow.up")
}
