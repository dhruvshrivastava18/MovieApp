//
//  LikedView.swift
//  MoviesApp
//
//  Created by Dhruv Shrivastava on 24/06/23.
//

import SwiftUI

struct LikedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Top Rated")
                        .bold()
                        .font(.title2)
                        .padding(.leading)
                    ScrollView(.horizontal) {
                        HStack {
                            MovieTab(imageName: "SpiderMan", movieName: "SpiderMan")
                            MovieTab(imageName: "Endgame", movieName: "Avengers")
                            MovieTab(imageName: "FordvFerrari", movieName: "FordvFerrari")
                            MovieTab(imageName: "SpiderMan", movieName: "SpiderMan")
                        }
                    }
                    .padding(.horizontal)
                    Text("Most Watched")
                        .bold()
                        .font(.title2)
                        .padding(.leading)
                    ScrollView(.horizontal) {
                        HStack {
                            MovieTab(imageName: "SpiderMan", movieName: "SpiderMan")
                            MovieTab(imageName: "Endgame", movieName: "Avengers")
                            MovieTab(imageName: "FordvFerrari", movieName: "FordvFerrari")
                            MovieTab(imageName: "SpiderMan", movieName: "SpiderMan")
                        }
                    }
                    .padding(.horizontal)
                    Text("Most Liked")
                        .bold()
                        .font(.title2)
                        .padding(.leading)
                    ScrollView(.horizontal) {
                        HStack {
                            MovieTab(imageName: "SpiderMan", movieName: "SpiderMan")
                            MovieTab(imageName: "Endgame", movieName: "Avengers")
                            MovieTab(imageName: "FordvFerrari", movieName: "FordvFerrari")
                            MovieTab(imageName: "SpiderMan", movieName: "SpiderMan")
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .navigationTitle("Liked")
        }
    }
}

struct LikedView_Previews: PreviewProvider {
    static var previews: some View {
        LikedView()
    }
}
