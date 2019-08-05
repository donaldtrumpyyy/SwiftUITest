//
//  languageDetail.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 06/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI

struct LanguageDetail : View {
    
    var language: Languages
    
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
                Image(language.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
            
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(language.name)
                            .color(.white)
                            .font(.largeTitle)
                        }.padding(.leading)
                         .padding(.bottom)
                    
                    Spacer()
                    
                    Text(language.type)
                        .color(.white)
                        .font(.headline)
                        .padding(.trailing)
                }
            }.listRowInsets(EdgeInsets())
            
            VStack(alignment: .leading) {
                Text(language.description)
                    .color(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(5)
                    .frame(height: 150)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text("Good")
                        .font(.title)
                        .bold()
                    Spacer()
                }.padding()
                
                Text(language.good)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text("Bad")
                        .font(.title)
                        .bold()
                    Spacer()
                }.padding()
                
                Text(language.bad)
            }.padding(.top)
             .padding(.bottom)
            
        }.edgesIgnoringSafeArea(.top)
         .navigationBarHidden(true)
    }
}


#if DEBUG
struct LanguageDetail_Previews : PreviewProvider {
    static var previews: some View {
        LanguageDetail(language: languageData[2])
    }
}
#endif
