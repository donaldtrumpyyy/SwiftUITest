//
//  Drinks.swift
//  SwiftUITest
//
//  Created by Corentin de Maupeou on 06/07/2019.
//  Copyright © 2019 Corentin de Maupeou. All rights reserved.
//

import SwiftUI

struct Languages: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var type: String
    var description: String
    var good: String
    var bad: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case profile = "profile"
        case hard = "hard"
        case simple = "simple"
    }
}
