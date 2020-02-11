//
//  SwiftUIView.swift
//  CustomUIExamples
//
//  Created by Jack Wong on 1/16/20.
//  Copyright © 2020 Jack Wong. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text("Wubba Lubba Dub Dub")
            .background(LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .leading, endPoint: .trailing))
            
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
