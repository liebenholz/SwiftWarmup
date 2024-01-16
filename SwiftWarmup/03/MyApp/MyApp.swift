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
                ZStack {
                    VStack {
                        Image(systemName: "tray.and.arrow.down.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        Text("This is Detail!")
                            .padding()
                    }
                }
                
                ZStack {
                    VStack {
                        Image(systemName: "tray.and.arrow.up.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        Text("This is Detail!")
                            .padding()
                    }
                }
                
                ZStack {
                    VStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        Text("This is Detail!")
                            .padding()
                        Button {
                            showModal = false
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
        })
        .onAppear() {
             showModal = true
        }
    }
}

#Preview {
    MyApp()
}
