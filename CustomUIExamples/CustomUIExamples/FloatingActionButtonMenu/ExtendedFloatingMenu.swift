//
//  ExtendedFloatingMenu.swift
//  CustomUIExamples
//
//  Created by Jack Wong on 1/14/20.
//  Copyright © 2020 Jack Wong. All rights reserved.
//

import SwiftUI


struct MenuItemButtonStyle: ButtonStyle {
    
    public func makeBody(configuration: MenuItemButtonStyle.Configuration) -> some View {
        
        configuration.label
            
            .compositingGroup()
            .shadow(color: .black, radius: 3)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}

struct ExtendedMenuItem: View {
    
    var label: String
    var icon: String
    
    var body: some View {
        
        HStack{
            
            Button(action: {
                print("meh")
            }) {
                Text(label)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 1.5)
            }.padding(.trailing)
            
            Button(action: {
                print("")
            }){
                ZStack {
                    Circle()
                        .fill(Constants.gradientEffect)
                        .frame(width: 55, height: 55)
                    
                    
                    Image(systemName: icon)
                        .imageScale(.large)
                        .foregroundColor(.white)
                }
                
            }
        }
        .transition(.move(edge: .trailing))
        .buttonStyle(MenuItemButtonStyle())
    }
}


struct ExtendedFloatingMenu: View {
    
    @State var showMenuItem1 = false
    @State var showMenuItem2 = false
    @State var showMenuItem3 = false
    @State var openMenuButton = false
    
    var body: some View {
        VStack(alignment: .trailing) {
            Spacer()
            
            if showMenuItem1 {
                
                ExtendedMenuItem(label: "Camera", icon: "camera.fill")
                
            }
            if showMenuItem2 {
                ExtendedMenuItem(label: "Photo", icon: "photo.on.rectangle")
                
            }
            if showMenuItem3 {
                
                ExtendedMenuItem(label: "Share", icon: "square.and.arrow.up.fill")
                
            }
            
            Button(action: {
                withAnimation {
                    self.showMenu()
                }
                
            }) {
                
                ZStack {
                    
                    Circle()
                        .fill(Constants.conic)
                        .frame(width: 75, height: 75)
                    
                    
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 75, height: 75)
                        .foregroundColor(.white)
                }
                .shadow(color: .black, radius: 1.5)
                .rotationEffect(.degrees(openMenuButton ? 225 : 0))
            }
            
        }
    }
    
    func showMenu() {
        withAnimation {
            self.showMenuItem3.toggle()
            self.openMenuButton.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            withAnimation {
                self.showMenuItem2.toggle()
            }
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            withAnimation {
                self.showMenuItem1.toggle()
            }
        })
    }
}


//MARK:- Preview
struct ExtendedFloatingMenu_Previews: PreviewProvider {
    static var previews: some View {
        ExtendedFloatingMenu()
    }
}
