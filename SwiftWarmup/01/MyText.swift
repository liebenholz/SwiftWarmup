//
//  MyText.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/15/24.
//

import SwiftUI

struct MyText: View {
    var textName: String
    var textFont: Font
    
    var body: some View {
        Text(textName)
            .font(textFont)
            .bold()
            .padding()
    }
}

#Preview {
    MyText(textName: "Text Element 0", textFont: .body)
}
