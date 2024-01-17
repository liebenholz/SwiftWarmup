//
//  FirstListPage.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct FirstListPage: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    Text("First Subpage")
                } label: {
                    Text("First")
                }
                
                NavigationLink {
                    Text("Second Subpage")
                } label: {
                    Text("Second")
                }
                
                NavigationLink {
                    Text("Third Subpage")
                } label: {
                    Text("Third")
                }
                
                NavigationLink {
                    Text("Fourth Subpage")
                } label: {
                    Text("Fourth")
                }
            }
            .navigationTitle("Received")
        }
    }
}

#Preview {
    FirstListPage()
}
