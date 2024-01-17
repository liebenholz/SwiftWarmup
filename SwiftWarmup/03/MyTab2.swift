//
//  MyTab2.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct MyTab2: View {
    var body: some View {
        TabView {
            TabDetail1()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            TabDetail2()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            TabDetail3()
                .badge("!") // 문자도 TabDetail1()에 들어감
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }

        }
        // .tabViewStyle(.page(indexDisplayMode: .always))
    }
}


#Preview {
    MyTab2()
}
