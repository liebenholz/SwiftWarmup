//
//  MyNavigationLink.swift
//  SwiftWarmup
//
//  Created by gokyulueau on 1/16/24.
//

import SwiftUI

struct MyNavigationLink: View {
    
    var description: String
    var title: String
    
    var body: some View {
        NavigationLink{
            Text(description)
        } label: {
            Text(title)
        }
    }
}

#Preview {
    MyNavigationLink(description: "Description", title: "title")
}
