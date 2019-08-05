//
//  DrinkRaw.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 06/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI

struct LanguageRow : View {
    
    var categoryName: String
    var languages: [Languages]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top) {
                    ForEach(self.languages.identified(by: \.name)) {
                        languages in
                        
                        NavigationButton(destination: LanguageDetail(language: languages)) {
                            LanguageItem(language: languages)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            }
        }.padding()
        
    }
}

#if DEBUG
struct LanguageRow_Previews : PreviewProvider {
    static var previews: some View {
        LanguageRow(categoryName: "list", languages: languageData)
    }
}
#endif
