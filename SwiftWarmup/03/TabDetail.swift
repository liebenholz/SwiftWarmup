//
//  TabDetail.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct TabDetail1: View {
    var body: some View {
        ZStack {
            // Color.gray.ignoresSafeArea()
            VStack {
                Image(systemName: "tray.and.arrow.down.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Text("This is Detail!")
                    .padding()
            }
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            // Color.indigo.ignoresSafeArea()
            VStack {
                Image(systemName: "tray.and.arrow.up.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Text("This is Detail!")
                    .padding()
            }
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack {
            // Color.purple.ignoresSafeArea()
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Text("This is Detail!")
                    .padding()
                
                Button {
                    // action
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
    TabDetail1()
}
