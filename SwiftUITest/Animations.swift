//
//  Animations.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 25/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI

struct Animations : View {
    
    @State private var isFlipped = false
    
    var beforeImageName: String
    var afterImageName: String
    
    var body: some View {
        VStack(spacing: 50.0) {
            Image("profile")
                .resizable()
                .frame(width: isFlipped ? 350 : 250, height: isFlipped ? 350 : 250)
                .cornerRadius(isFlipped ?  10 : 25)
                .shadow(radius: isFlipped ? 5 : 30)
                .blur(radius: isFlipped ? 0 : 25)
                .opacity(isFlipped ? 1 : 0)
                .offset(y: isFlipped ? -150 : -200)
            
            HStack(spacing: 25) {
                Text("Donald_Trumpyyy")
                    .font(.title)
                    .bold()
                    .opacity(isFlipped ? 1 : 0)
                    .offset(y: isFlipped ? -150 : -200)
                
                Text("Developer")
                    .font(.headline)
                    .color(.gray)
                    .opacity(isFlipped ? 1 : 0)
                    .offset(y: isFlipped ? -150 : -200)
            }
            
            Button(action: { self.isFlipped.toggle() }) {
                Text("Show")
            }
            
            //blur -> 0 : 25
            //rotate 3D -> 0 : 50
            //.rotation3DEffect(Angle(degrees: isFlipped ? 360 : 0), axis: (x: 0.0, y: 10.0, z: 10.0))
        }.animation(.spring(initialVelocity: 1))
        
        /*
         VStack {
         Image(isFlipped ?  afterImageName : beforeImageName)
         .resizable()
         .frame(width: isFlipped ? 350 : 250, height: isFlipped ? 350 : 250)
         .clipped()
         .cornerRadius(isFlipped ?  10 : 25)
         .shadow(radius: isFlipped ? 5 : 30)
         .blur(radius: isFlipped ? 0 : 25)
         .rotation3DEffect(Angle(degrees: isFlipped ? 360 : 0), axis: (x: 0.0, y: 10.0, z: 0.0))
         .offset(y: isFlipped ? -50 : 0)
         .animation(.spring())
         .gesture(TapGesture().onEnded {
         withAnimation {
         self.isFlipped.toggle()
         }
         })
         
         //blur -> 0 : 25
         //rotate 3D -> 0 : 50
         //.rotation3DEffect(Angle(degrees: isFlipped ? 360 : 0), axis: (x: 0.0, y: 10.0, z: 10.0))
         }
         */
    }
}

#if DEBUG
struct Animations_Previews : PreviewProvider {
    static var previews: some View {
        Animations(beforeImageName: "swiftui", afterImageName: "profile")
    }
}
#endif
