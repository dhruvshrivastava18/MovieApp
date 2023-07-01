//
//  ContentView.swift
//  MoviesApp
//
//  Created by Dhruv Shrivastava on 23/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Image(systemName: "tv.fill")
                    Text("Movies")
                }
                .tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(1)
            
            LikedView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Liked")
                }
                .tag(2)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
