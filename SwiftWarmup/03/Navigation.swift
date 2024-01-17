//
//  Navigation.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["Move to Detail View", "Move to Detail View 2"]
    let descriptions = ["This is your Destination", "This is your Destination 2"]
    
    @State var showModal: Bool = false
    
    var body: some View {
        // 내비게이션을 쌓는다
        NavigationStack {
            List {
                ForEach([0,1], id:\.self) {
                    index in
                    // 무엇을 쌓을 것인가(링크)
                    MyNavigationLink(description: descriptions[index], title: titles[index])
                }
                .navigationTitle("Navigation")
            }
            // 툴바에 버튼 추가
            .toolbar {
                // 툴바 아이템의 위치도 설정할 수 있다.
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        showModal = true
                    } label: {
                        Text("Add")
                    }
                }
            }
            // 모달의 추가 페이지
            .sheet(isPresented: $showModal, content: {
                Text("Item Add Page.")
            })
            .navigationTitle("Navigation")
            
        }
    }
}

#Preview {
    Navigation()
}
