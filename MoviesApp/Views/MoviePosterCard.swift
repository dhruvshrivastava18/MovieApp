//
//  MoviePosterCard.swift
//  SwiftUIMovieDb
//
//  Created by Dhruv Shrivastava on 23/05/20.


import SwiftUI

struct MoviePosterCard: View {
    
    let movie: Movie
    @ObservedObject var imageLoader = ImageLoader()
    
    var body: some View {
        ZStack {
            if self.imageLoader.image != nil {
                Image(uiImage: self.imageLoader.image!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width/2-30, height: 250)
                    .cornerRadius(8)
                    .shadow(radius: 4)
            } else {
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .cornerRadius(8)
                    .shadow(radius: 4)
                Text(movie.title)
                    .multilineTextAlignment(.center)
            }
        }
        .frame(width: UIScreen.main.bounds.width/2-30, height: 250)
        .onAppear {
            self.imageLoader.loadImage(with: self.movie.posterURL)
        }
    }
}

struct MoviePosterCard_Previews: PreviewProvider {
    static var previews: some View {
        MoviePosterCard(movie: Movie.stubbedMovie)
    }
}
