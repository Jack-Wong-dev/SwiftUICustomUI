//
//  Constants.swift
//  CustomUIExamples
//
//  Created by Jack Wong on 1/15/20.
//  Copyright © 2020 Jack Wong. All rights reserved.
//

import SwiftUI

struct Constants{
    static let spectrum = Gradient(colors: [
        .red, .yellow, .green, .blue, .purple, .red
    ])
    
    static let colors = Gradient(colors: [.yellow, .purple])
    
    static let conic = AngularGradient(gradient: colors,
                                       center: .center,
                                       angle: Angle(degrees: -90))
    static let gradientEffect = LinearGradient(gradient: colors, startPoint: .leading, endPoint: .trailing)
}
