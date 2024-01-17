//
//  Detail.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct Detail: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("This is Modal Page.")
        
        Button {
            isPresented = false
            // showModal.toggle()
        } label : {
            Text("Close")
        }
    }
}

#Preview {
    Detail(isPresented: .constant(true))
}
