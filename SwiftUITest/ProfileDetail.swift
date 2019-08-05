//
//  ProfileDetail.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 07/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI

struct ProfileDetail : View {
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Donald_Trumpyyy")
                            .color(.white)
                            .font(.largeTitle)
                        }.padding(.leading)
                         .padding(.bottom)
                    
                    Spacer()
                    
                    Text("Developer")
                        .color(.white)
                        .font(.headline)
                        .padding(.trailing)
                }
            }.listRowInsets(EdgeInsets())
            
            Text("Hey! I'm a young developer, and I program in Java, JavaScript and Swift UI. I programmed in first with Java for create Minecraft server plugins, and next create programs with some APIs. After, I learned JavaScript for create websites. And, I learned Swift UI for program some iOS apps.")
                .color(.primary)
                .font(.body)
                .lineLimit(nil)
                .lineSpacing(5)
                .frame(height: 200)
        }.edgesIgnoringSafeArea(.top)
         .navigationBarHidden(true)
    }
}

#if DEBUG
struct ProfileDetail_Previews : PreviewProvider {
    static var previews: some View {
        ProfileDetail()
    }
}
#endif
