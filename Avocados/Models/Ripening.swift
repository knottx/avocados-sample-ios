//
//  Ripening.swift
//  Avocados
//
//  Created by Visarut Tippun on 15/4/22.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
