//
//  ContentView.swift
//  Movies Carousel
//
//  Created by Admin on 18/01/2021.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal) {
                    HStack(spacing: 50) {
                       ForEach (0..<20){ num in
                           GeometryReader { proxy in
                             //let localScale = scale(proxy)
                               Image("Wonder Woman")
                                   .resizable()
                                   .scaledToFill()
                                   .frame(width: 150)
                                   .clipped()
                                   
                                .shadow(radius: 7)
                                .cornerRadius(10.0)
                                //.scaleEffect(CGSize(width: localScale, height: localScale))
                                .carouselSlider(from: true, in: proxy)
                                   
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
        ContentView()
    }
}
extension View {
    func carouselSlider(from point: Bool, in proxy: GeometryProxy) -> some View {
        self.modifier(CarouselSlider(alignment: point, proxy: proxy))
    }
}
