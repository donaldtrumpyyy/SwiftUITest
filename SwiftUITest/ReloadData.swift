//
//  ReloadData.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 04/08/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import Combine
import SwiftUI

class User: BindableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    var username = "Username" { didSet { didChange.send(()) } }
    
    var languages = ["SwiftUI", "Java", "JavaScript", "C", "Python", "CSS3", "Ruby"] { didSet { didChange.send(()) } }
    var selectedLanguage = 0 { didSet { didChange.send(()) } }
}

struct ReloadData : View {
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack(alignment: .leading, spacing: 50.0) {
            Text("Settings")
                .font(.largeTitle)
                .bold()
            
            VStack(alignment: .leading, spacing: 50.0) {
                Text("Username")
                    .font(.title)
                
                TextField($user.username)
                    .border(Color.black, width: 1)
                
                Text("Language")
                    .font(.title)
                
                Picker(selection: $user.selectedLanguage, label: Text("Language")) {
                    ForEach(0 ..< user.languages.count) {
                        Text("\(self.user.languages[$0])").tag($0)
                    }
                }
            }
        }.padding()
         .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
let userData = User()

struct ReloadData_Previews : PreviewProvider {
    static var previews: some View {
        ReloadData().environmentObject(userData)
    }
}
#endif
