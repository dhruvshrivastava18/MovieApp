//
//  HomeView.swift
//  MoviesApp
//
//  Created by Dhruv Shrivastava on 24/06/23.
//

import SwiftUI

struct HomeView: View {
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
                            Button {
                                
                            } label: {
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                            }
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
                            Button {
                                
                            } label: {
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                            }
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
                            Button {
                                
                            } label: {
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .navigationTitle("Movies")
        }
    }
}

struct MovieTab: View {
    let imageName: String
    let movieName: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 140)
                .cornerRadius(10)
            Text(movieName)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
