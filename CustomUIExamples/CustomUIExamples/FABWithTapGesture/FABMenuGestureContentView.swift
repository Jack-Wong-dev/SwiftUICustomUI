//
//  FABMenuGestureContentView.swift
//  CustomUIExamples
//
//  Created by Jack Wong on 1/15/20.
//  Copyright © 2020 Jack Wong. All rights reserved.
//

import SwiftUI

struct FABMenuGestureContentView: View {
    @State private var rectanglePresent = false
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            LinearGradient(gradient: Gradient(colors: [.white, .pink]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            FABMenuWIthTapGesture()
        }
        
    }
}

struct FABMenuGestureContentView_Previews: PreviewProvider {
    static var previews: some View {
        FABMenuGestureContentView()
    }
}
