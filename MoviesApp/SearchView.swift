//
//  SearchView.swift
//  MoviesApp
//
//  Created by Dhruv Shrivastava on 24/06/23.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3), spacing: 20) {
                        MovieTab(imageName: "SpiderMan", movieName: "SpiderMan")
                        MovieTab(imageName: "Endgame", movieName: "Avengers")
                        MovieTab(imageName: "FordvFerrari", movieName: "FordvFerrari")
                        MovieTab(imageName: "SpiderMan", movieName: "SpiderMan")
                        MovieTab(imageName: "Endgame", movieName: "Avengers")
                        MovieTab(imageName: "FordvFerrari", movieName: "FordvFerrari")
                    }
                    .searchable(text: $searchText)
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .navigationTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
