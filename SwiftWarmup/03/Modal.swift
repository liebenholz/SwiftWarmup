//
//  Modal.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    var body: some View {
        VStack {
            Text("This is Main Page.")
            
            Button {
                showModal = true
                // showModal.toggle()
            } label : {
                Text("Modal Screen Change")
            }
        }
        .sheet(isPresented: $showModal) {
            // 바인딩으로 연결하기
            Detail(isPresented: $showModal)
        }
    }
}

#Preview {
    Modal()
}
