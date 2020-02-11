//
//  CircleMenu.swift
//  CustomUIExamples
//
//  Created by Jack Wong on 1/16/20.
//  Copyright © 2020 Jack Wong. All rights reserved.
//

import SwiftUI

struct CircleMenu: View {
    var body: some View {
        Circle()
//           .scaledToFit()
            .frame(width: 300, height: 150)
            .overlay(
                Text("Mac OS Catalina")
                .foregroundColor(.gray)
                .font(.largeTitle)
            ,alignment: .bottomTrailing)
    }
}

struct CircleMenu_Previews: PreviewProvider {
    static var previews: some View {
        CircleMenu()
    }
}
