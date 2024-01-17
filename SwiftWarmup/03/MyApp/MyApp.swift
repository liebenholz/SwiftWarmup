//
//  MyApp.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//
//  UI Final Practice

import SwiftUI

struct MyApp: View {
    
    @State var showModal = false
    
    var body: some View {
        TabView {
            FirstListPage()
                    .tabItem {
                        Label("Received", systemImage: "tray.and.arrow.down.fill")
                    }
                
                Text("Send")
                    .tabItem {
                        Label("Send", systemImage: "tray.and.arrow.up.fill")
                    }
                
                Text("Account")
                    .tabItem {
                        Label("Account", systemImage: "person.crop.circle.fill")
                    }
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                OnBoardingSample(onboardingTitle: "OnBoard 1", imageSystemName: "1.lane")
                OnBoardingSample(onboardingTitle: "OnBoard 2", imageSystemName:  "2.lane")
                OnBoardingWithButton(isPresented: $showModal, onboardingTitle: "OnBoard 3", imageSystemName: "3.lane")
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
        })
        .onAppear() {
             showModal = true
        }
    }
}

#Preview {
    MyApp()
}
