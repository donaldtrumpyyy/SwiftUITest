//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 06/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    
    @EnvironmentObject var user: User
    
    @State private var isFlipped = false
    @State private var countFlipped = 0
    
    @State private var touched = false
    
    private var listImages = ["Profile", "SwiftUI", "Java", "JavaScript", "CSS3", "Ruby"]
    
    var categories: [String: [Languages]] {
        .init(
            grouping: languageData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                //self.listImages[self.countFlipped]
                
                Image(self.user.languages[self.user.selectedLanguage])
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(30)
                    .shadow(radius: 15)
                    

                HStack(spacing: 40.0) {
                    Text("\(self.user.username)")
                        .font(.title)
                        .bold()

                    Text("Developer")
                        .font(.headline)
                        .color(.gray)
                }
            }.animation(.spring())
             .rotation3DEffect(Angle(degrees: isFlipped ? 360 : 0), axis: (x: 0.0, y: 0.0, z: 10.0))
             .blur(radius: touched ? 25 : 0)
             .gesture(TapGesture(count: 2).onEnded({ _ in
                withAnimation {
                    self.isFlipped.toggle()
                    
                    /*
                     if self.countFlipped >= self.listImages.count - 1 {
                     self.countFlipped = 0
                     } else {
                     self.countFlipped += 1
                     }
                     */
                }
             }))
             .gesture(TapGesture(count: 1).onEnded({ _ in
                 withAnimation {
                     self.touched.toggle()
                 }
             }))
            
            List {
                /*
                 MapView(latitude: 48.8534, longitude: 2.3488)
                 .frame(height: 350)
                 .cornerRadius(15)
                 */
                
                NavigationButton(destination: CelsiusFarenheitView()) {
                    Text("Celsius and Fahrenheit")
                }
                
                NavigationButton(destination: ReloadData()) {
                    Text("Settings")
                }
            }
        }
        
        /*
         NavigationView {
         ProfileItem()
         .padding([.top, .leading, .trailing])
         
         List(categories.keys.sorted().identified(by: \String.self)) {
         key in
         
         LanguageRow(categoryName: "\(key) languages".uppercased(), languages: self.categories[key]!)
         .frame(height: 375)
         .padding(.top)
         .padding(.bottom)
         }
         
         .navigationBarTitle(Text("javaConsole"))
         }
         */
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
