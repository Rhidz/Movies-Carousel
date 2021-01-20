//
//  ContentView.swift
//  Movies Carousel

//
//  Created by Admin on 18/01/2021.
//

import SwiftUI

struct CarouselView: View {
    var viewMovies: [Movies]
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal) {
                    HStack(spacing: 50) {
                        ForEach (viewMovies.indices){ num in
                           GeometryReader { proxy in
                            CarouselMovies(movie: viewMovies[num])
                            .carouselSlider(from: false, in: proxy)
                          }
                           .frame(width: 125, height: 300)
                           
                        }
                    }.padding(30)
                }
                
            }
           
                 .navigationTitle("Movie Carousel")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView(viewMovies: movies)
    }
}
extension View {
    func carouselSlider(from point: Bool, in proxy: GeometryProxy) -> some View {
        self.modifier(CarouselSlider(alignment: point, proxy: proxy))
    }
}
