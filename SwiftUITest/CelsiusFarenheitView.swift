//
//  EuroDollarView.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 31/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI

struct CelsiusFarenheitView : View {
    var body: some View {
        NavigationView {
            List {
                VStack(alignment: .leading) {
                    Text("Celsius to Fahrenheit")
                        .font(.largeTitle)
                        .bold()
                    
                    CelsiusToFarenheitView()
                }.padding(.all, 5.0)
                
                VStack(alignment: .leading) {
                    Text("Fahrenheit to Celsius")
                        .font(.largeTitle)
                        .bold()
                    
                    FarenheitToCelsiusView()
                }.padding(.all, 5.0)
            }.navigationBarTitle(Text("Temperatures"))
        }
        
        /*
         TabbedView(selection: .constant(1)) {
         CelsiusToFarenheitView()
         .tabItemLabel(Text("Celsius to Farenheit"))
         .tag(1)
         
         FarenheitToCelsiusView()
         .tabItemLabel(Text("Farenheit to Celsius"))
         .tag(2)
         }
         */
    }
}

#if DEBUG
struct CelsiusFarenheitView_Previews : PreviewProvider {
    static var previews: some View {
        CelsiusFarenheitView()
    }
}
#endif

struct CelsiusToFarenheitView : View {
    @State var celsius: Double = 15
    
    var body: some View {
        return VStack(spacing: 3.0) {
                Text("Celsius")
                    .font(.title)
                    .bold()
            
                    Text("\(Int(celsius)) °C")
            
                    Stepper(value: $celsius, in: -50...50) {
                        Text("Adding 1 per 1")
                    }
            
                    Slider(value: $celsius, from: -50, through: 50, by: 0.1)
            
                    Text("Fahrenheit")
                        .font(.title)
                        .bold()
            
                    Text("\(Int(celsius * 9 / 5 + 32)) °F")
        }.padding(.all)
    }
}

struct FarenheitToCelsiusView : View {
    @State var fahrenheit: Double = 59
    
    var body: some View {
        return VStack(spacing: 3.0) {
                Text("Fahrenheit")
                    .font(.title)
                    .bold()
            
                Text("\(Int(fahrenheit)) °F")
            
                Stepper(value: $fahrenheit, in: -58...122) {
                    Text("Adding 1 per 1")
                }
            
                Slider(value: $fahrenheit, from: -58, through: 122, by: 0.1)
            
                Text("Celsius")
                    .font(.title)
                    .bold()
            
                Text("\(Int((fahrenheit - 32) * 5 / 9)) °C")
        }.padding(.all)
    }
}
