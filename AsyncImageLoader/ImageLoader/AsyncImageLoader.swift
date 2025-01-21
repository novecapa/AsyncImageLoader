//
//  AsyncImageLoader.swift
//  AsyncImageLoader
//
//  Created by Josep Cerdá Penadés on 21/6/24.
//

import SwiftUI

struct AsyncImageLoader: View {

    private let url: URL?
    @State private var loader: ImageLoader
    init(url: URL?,
         loader: ImageLoader = ImageLoader()) {
        self.url = url
        self.loader = loader
    }

    var body: some View {
        Group {
            if let image = loader.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .transition(.opacity.animation(.easeInOut))
            } else {
                ZStack {
                    // placeholder image
                    Image(systemName: "mountain.2")
                }
                .scaledToFit()
                .background(.gray.opacity(0.2))
            }
        }
        .onAppear {
            guard let url else { return }
            loader.loadImage(with: url)
        }
    }

    var imageLoaded: UIImage {
        loader.image ?? UIImage()
    }
}
