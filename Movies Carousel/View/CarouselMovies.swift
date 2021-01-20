//
//  CarouselMovies.swift
//  Movies Carousel
//
//  Created by Admin on 20/01/2021.
//

import SwiftUI

struct CarouselMovies: View {
    var movie: Movies
    
    var body: some View {
        VStack {
            Image(movie.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 150)
                .clipped()
                .shadow(radius: 7)
                .cornerRadius(10.0)
                
                
            Text(movie.movieName)
                .font(.body)
                .fontWeight(.semibold)
            
                    
        }
    }
}

/*struct CarouselMovies_Previews: PreviewProvider {
    static var previews: some View {
        
        CarouselMovies(movie: movies[2])
    }
}*/
