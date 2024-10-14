//
//  ContentView.swift
//  HackerNews
//
//  Created by Muhammd Mukthayar on 13/10/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url), label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
                }
                .navigationTitle("mukthayare")
            }
        }
        .onAppear() {
            networkManager.fetchData()
        }
    }
    
}

#Preview {
    ContentView()
}
