//
//  ImageLoader.swift
//  AsyncImageLoader
//
//  Created by Josep Cerdá Penadés on 21/6/24.
//

import SwiftUI

let imageCache: NSCache<AnyObject, AnyObject> = NSCache<AnyObject, AnyObject>()

@Observable
class ImageLoader {

    private enum Constants {
        static let maxMB: Int = 50 * 1024 * 1024
        static let maxImages: Int = 512
    }

    var image: UIImage?
    var imageURL: URL?

    init() {
//         imageCache.totalCostLimit = Constants.maxMB
//         imageCache.countLimit = Constants.maxImages
    }

    func loadImage(with url: URL) {
        imageURL = url
        if let cachedImage = imageCache.object(forKey: url as AnyObject) as? UIImage {
            self.image = cachedImage
            return
        }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data,
                  let downloadedImage = UIImage(data: data),
                  self.imageURL == url else {
                return
            }
            DispatchQueue.main.async {
                imageCache.setObject(downloadedImage, forKey: url as AnyObject)
                self.image = downloadedImage
            }
        }.resume()
    }
}
