//
//  DrinkItem.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 06/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI

struct LanguageItem : View {
    
    var language: Languages
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            Image(language.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(language.name)
                    .color(.primary)
                    .font(.headline)
                
                Text(language.description)
                    .color(.secondary)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 30)
            }
        }
        
    }
}

#if DEBUG
struct LanguageItem_Previews : PreviewProvider {
    static var previews: some View {
        LanguageItem(language: languageData[0])
    }
}
#endif
