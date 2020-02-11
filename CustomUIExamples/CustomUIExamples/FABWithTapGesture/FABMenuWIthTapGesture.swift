//
//  FABMenuWIthTapGesture.swift
//  CustomUIExamples
//
//  Created by Jack Wong on 1/15/20.
//  Copyright © 2020 Jack Wong. All rights reserved.
//

import SwiftUI

struct FABMenuItem: View {
    
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


struct FABMenuWIthTapGesture: View {
    
    @State var overlayPresent = false
    @State var showMenuItem1 = false
    @State var showMenuItem2 = false
    @State var showMenuItem3 = false
    @State var menuButtonPresent = true
    
    var body: some View {
        ZStack(alignment: .trailing){
            
            if overlayPresent{
                Rectangle()

                    .opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//
                    .gesture(TapGesture().onEnded{
                                           self.showMenu()
                                       })
            }
            
            VStack(alignment: .trailing) {
                Spacer()
                if showMenuItem1 {
                    
                    FABMenuItem(label: "Camera", icon: "camera.fill")
                    
                }
                if showMenuItem2 {
                    FABMenuItem(label: "Photo", icon: "photo.on.rectangle")
                    
                }
                if showMenuItem3 {
                    
                    FABMenuItem(label: "Share", icon: "square.and.arrow.up.fill")
                    
                }
                
                if menuButtonPresent {
                    
                    Button(action: {
                        withAnimation {
                            self.showMenu()
                        }
                        
                    }) {
                        
                        ZStack {
                            
                            Circle()
                                .fill(Constants.conic)
                                .frame(width: 60, height: 60)
                            
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                        }
                        .shadow(color: .black, radius: 1.5)
                    }
                }
            }
             .padding(.trailing)
        }
    }
    
    func showMenu() {
        withAnimation {
            self.showMenuItem3.toggle()
            self.menuButtonPresent.toggle()
            self.overlayPresent.toggle()
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
struct FABMenuWIthTapGesture_Previews: PreviewProvider {
    static var previews: some View {
        FABMenuWIthTapGesture()
    }
}

