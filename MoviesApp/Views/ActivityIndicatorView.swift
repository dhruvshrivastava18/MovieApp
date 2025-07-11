//
//  ActivityIndicatorView.swift
//  SwiftUIMovieDb
//
//  Created by Dhruv Shrivastava on 23/05/20.


import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
}
