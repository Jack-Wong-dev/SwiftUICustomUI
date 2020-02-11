//
//  RadialMenu.swift
//  CustomUIExamples
//
//  Created by Jack Wong on 1/16/20.
//  Copyright © 2020 Jack Wong. All rights reserved.
//

import SwiftUI

struct RadialMenu: View {
    
    @State private var openMenu = false
    
    @State private var menuItem1 = false
    @State private var menuItem2 = false
    @State private var menuItem3 = false
    @State private var menuItem4 = false
    @State private var menuItem5 = false
    @State private var menuItem6 = false
    
    @State private var scaleSmall = true
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.green,.yellow]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            
            VStack{
                Circle()
                    .padding() .foregroundColor(.black)
                    .opacity(0.6)
                    .scaleEffect(scaleSmall ? 0 : 1)
                    .animation(.easeInOut)
                
            }
            Button(action: {
                withAnimation {
                    self.showMenu()
                }
            }) {
                ZStack {

                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.yellow,.green]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 55, height: 55)
                    
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 55, height: 55)
                        .foregroundColor(.white)
                }
                .shadow(color: .black, radius: 1.5)
            }
        }
        
        
    }
    
    
    
    
    func showMenu(){
        withAnimation {
            
           
            self.openMenu.toggle()
            
            self.scaleSmall.toggle()
            self.menuItem6.toggle()
            self.menuItem5.toggle()
            self.menuItem4.toggle()
            self.menuItem3.toggle()
            self.menuItem2.toggle()
            self.menuItem1.toggle()
        }
        
    }
    
}

struct RadialMenu_Previews: PreviewProvider {
    static var previews: some View {
        RadialMenu()
    }
}
