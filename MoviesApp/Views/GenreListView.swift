//
//  GenreListView.swift
//  MoviesApp
//
//  Created by Dhruv Shrivastava on 30/08/23.
//

import SwiftUI

struct GenreListView: View {
    let genre : String
    @ObservedObject var movieGenreState = MovieGenreState()
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                    ForEach(movieGenreState.movies ?? [], id: \.id) { item in
                        // Customize each grid item here
                        NavigationLink {
                            MovieDetailView(movieId: item.id)
                        } label: {
                            MoviePosterCard(movie: item)
                        }
                    }
                }
                .padding()
            }
        }.onAppear {
                movieGenreState.searchGenre(genre: genre)
            }
    }
    
}

struct GenreListView_Previews: PreviewProvider {
    static var previews: some View {
        GenreListView(genre: "12")
    }
}
