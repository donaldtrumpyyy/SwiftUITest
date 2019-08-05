//
//  ProfileView.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 07/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI

struct ProfileItem : View {
    var body: some View {
        NavigationButton(destination: ProfileDetail()) {
            VStack(alignment: .leading, spacing: 16) {
                Image("profile")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 170)
                    .cornerRadius(10)
                    .shadow(radius: 15)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Profile")
                        .font(.title)
                        .color(.primary)
                        .bold()
                        .padding(.bottom)
                }
            }
        }
    }
}

#if DEBUG
struct ProfileView_Previews : PreviewProvider {
    static var previews: some View {
        ProfileItem()
    }
}
#endif
