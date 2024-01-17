//
//  Settings.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/15/24.
//

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let systemName: String
    let backgroungColor: Color
    let foregroundColor: Color
}

struct Settings: View {
    
    let data: [[SettingInfo]] = [
        [SettingInfo(title: "Screen Time", systemName: "hourglass", backgroungColor: .indigo, foregroundColor: .white)],
        [SettingInfo(title: "General", systemName: "gear", backgroungColor: .gray, foregroundColor: .white),
        SettingInfo(title: "Accessibility", systemName: "accessibility", backgroungColor: .blue, foregroundColor: .white),
        SettingInfo(title: "Privacy & Security", systemName: "hand.raised.fill", backgroungColor: .blue, foregroundColor: .white)],
        [SettingInfo(title: "Passwords", systemName: "key.fill", backgroungColor: .gray, foregroundColor: .white)]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                // 이중 배열로 섹션 나누기
                ForEach(data, id: \.self) { section in
                    Section {
                        // 나눠진 섹션 내에서 라벨
                        ForEach(section, id: \.self) { item in
                            Label {
                                Text(item.title)
                            } icon: {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(.all, 5)
                                    .background(item.backgroungColor)
                                    .foregroundColor(item.foregroundColor)
                                    .cornerRadius(6)
                            }
                        }
                    }
                }
//                Section {
//                    Label {
//                        Text("Screen Time")
//                    } icon: {
//                        Image(systemName: "hourglass")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 5)
//                            .background(.indigo)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                }
//                
//                Section {
//                    Label {
//                        Text("General")
//                    } icon: {
//                        Image(systemName: "gear")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 5)
//                            .background(.gray)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                        
//                    }
//                    
//                    Label {
//                        Text("Accessibility")
//                    } icon: {
//                        Image(systemName: "accessibility")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 5)
//                            .background(.blue)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                    
//                    Label {
//                        Text("Privacy & Security")
//                        
//                    } icon: {
//                        Image(systemName: "hand.raised.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 5)
//                            .background(.blue)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                }
//                
//                Section {
//                    Label {
//                        Text("Passwords")
//                    } icon: {
//                        Image(systemName: "key.fill")
//                    }
//                }
            }.navigationTitle("Settings")
        }
    }
}

#Preview {
    Settings()
}
