//
//  ContentView.swift
//  CustomUIExamples
//
//  Created by Jack Wong on 1/14/20.
//  Copyright © 2020 Jack Wong. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      ZStack(alignment: .bottomTrailing) {
        
        LinearGradient(gradient: Gradient(colors: [.yellow,.purple]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)

        ExtendedFloatingMenu()
            .padding(.trailing)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
