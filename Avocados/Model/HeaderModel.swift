//
//  HeaderModel.swift
//  Avocados
//
//  Created by Александр Карпов on 16.03.2023.
//

import SwiftUI

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
