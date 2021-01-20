//
//  Movies.swift
//  Movies Carousel
//
//  Created by Admin on 20/01/2021.
//

import Foundation
struct Movies: Hashable,Codable, Identifiable {
    var id: Int
    var movieName: String
    var imageName: String
}
