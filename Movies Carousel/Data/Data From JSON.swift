//
//  Data From JSON.swift
//  Movies Carousel
//
//  Created by Admin on 20/01/2021.
//

import Foundation


let movies: [Movies] = load("Carousel Images.json") /* The generic type T here a JSON object */

func load<T:Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
      else {
        fatalError("Couldn't find \(filename) in main bundle. ")
      }
    do {
        data = try Data(contentsOf: file)
        
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error) ")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't covert data")
    }
}
