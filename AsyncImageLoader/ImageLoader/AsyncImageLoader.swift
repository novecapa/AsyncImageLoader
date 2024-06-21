//
//  AsyncImageLoader.swift
//  AsyncImageLoader
//
//  Created by Josep Cerdá Penadés on 21/6/24.
//

import SwiftUI

struct AsyncImageLoader: View {

    @State private var loader: ImageLoader
    var url: URL?

    init(loader: ImageLoader = ImageLoader(),
         url: URL?) {
        self.loader = loader
        self.url = url
        if let url {
            loader.loadImage(with: url)
        }
    }

    var body: some View {
        if let image = loader.image {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
                .transition(.opacity.animation(.default))
        } else {
            ZStack {
                // placeholder image
                Image(systemName: "mountain.2")
            }
            .scaledToFit()
            .background(.gray.opacity(0.2))
            .onAppear {
                guard let url = loader.imageURL else { return }
                loader.loadImage(with: url)
            }
        }
    }

    var imageLoaded: UIImage {
        loader.image ?? UIImage()
    }
}
