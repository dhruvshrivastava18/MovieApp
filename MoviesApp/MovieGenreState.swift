//
//  MovieGenreState.swift
//  MoviesApp
//
//  Created by Dhruv Shrivastava on 30/08/23.
//

import Foundation


class MovieGenreState: ObservableObject {
    
    @Published var movies: [Movie]?
    @Published var isLoading: Bool = false
    @Published var error: NSError?

    private let movieService: MovieService
    
    init(movieService: MovieService = MovieStore.shared) {
        self.movieService = movieService
    }
    
    func searchGenre(genre: String) {
        self.movies = nil
        self.isLoading = false
        self.error = nil
        
//        guard !query.isEmpty else {
//            return
//        }
        
        self.isLoading = true
        self.movieService.searchMovieGenre(genre: genre) {[weak self] (result) in
            self?.isLoading = false
            switch result {
            case .success(let response):
                self?.movies = response.results
                print(self?.movies)
            case .failure(let error):
                self?.error = error as NSError
            }
        }
    }
}

