//
//  OnBoarding2.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct OnBoarding2: View {
    
    let onboardingTitle: String
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "tray.and.arrow.up.fill")
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
    OnBoarding2(onboardingTitle: "This is Detail!")
}
