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
                    Text("Liked")
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
                    Text("Watch List")
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
                    Text("Watched")
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
            .navigationTitle("Tracker")
        }
    }
}

struct LikedView_Previews: PreviewProvider {
    static var previews: some View {
        LikedView()
    }
}
