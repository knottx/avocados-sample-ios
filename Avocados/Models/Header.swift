//
//  Header.swift
//  Avocados
//
//  Created by Visarut Tippun on 14/4/22.
//

import Foundation

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
