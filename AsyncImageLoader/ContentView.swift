//
//  ContentView.swift
//  AsyncImageLoader
//
//  Created by Josep Cerdá Penadés on 21/6/24.
//

import SwiftUI

struct ContentView: View {

    let mountains: [Mountain] = .mock
    
    var body: some View {
        NavigationStack {
            List(mountains) { mountain in
                HStack {
                    AsyncImageLoader(url: mountain.imageURL)
                        .cornerRadius(6)
                        .frame(width: 80)
                        .frame(height: 60)
                        .padding(.trailing)
                    VStack(alignment: .leading) {
                        Text(mountain.name)
                            .font(.headline)
                        Text(mountain.height)
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle("Bigger mountains")
        }
    }
}

#Preview {
    ContentView()
}
