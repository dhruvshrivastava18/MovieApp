//
//  MovieSearchView.swift
//  SwiftUIMovieDb
//
//  Created by Dhruv Shrivastava on .

import SwiftUI

struct MovieSearchView: View {
    @ObservedObject var movieSearchState = MovieSearchState()
    let items = ["Action" : "28",
                 "Adventure" : "12",
                 "Animation" : "16",
                 "Comedy" : "35",
                 "Crime" : "80",
                 "Drama" : "18",
                 "Fantasy" : "14",
                 "Horror" : "27",
                 "Romance" : "10749",
                 "Science Fiction": "878",
                 "Thriller" : "53"] // Array of items
    var body: some View {
        NavigationView {
            VStack {
                if movieSearchState.query.isEmpty {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 1) {
                            ForEach(items.sorted(by: { $0.key < $1.key }), id: \.key) { key, value in
                                // Customize each grid item here
                                NavigationLink {
                                    GenreListView(genre: value)
                                        .navigationTitle(key)
                                } label: {
                                    Text("\(key)")
                                        .frame(width: UIScreen.main.bounds.width/2 - 20, height: 90)
                                        .foregroundColor(.black)
                                        .background(Color.gray)
                                        .cornerRadius(10)
                                        .padding(10)
                                }
    
                            }
                        }
                        .padding()
                    }
                } else {
                    List {
                        //                SearchBarView(placeholder: "Search movies", text: self.$movieSearchState.query)
                        //                    .listRowInsets(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                        LoadingView(isLoading: self.movieSearchState.isLoading, error: self.movieSearchState.error) {
                            self.movieSearchState.search(query: self.movieSearchState.query)
                        }
                        if self.movieSearchState.movies != nil {
                            ForEach(self.movieSearchState.movies!) { movie in
                                NavigationLink(destination: MovieDetailView(movieId: movie.id)) {
                                    VStack(alignment: .leading) {
                                        Text(movie.title)
                                        Text(movie.yearText)
                                    }
                                }
                            }
                        }
                    }
                    
                }
            }
            .overlay(alignment: .bottom,content: {
                SearchBarView(placeholder: "Search movies", text: self.$movieSearchState.query)
                    .background(.white)
            })
            //            .searchable(text: $movieSearchState.query, placement: .automatic)
            .onAppear {
                self.movieSearchState.startObserve()
            }
            .navigationBarTitle("Search")
        }
    }
}

struct MovieSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSearchView()
    }
}
