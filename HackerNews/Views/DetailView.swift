//
//  DetailView.swift
//  HackerNews
//
//  Created by Muhammd Mukthayar on 14/10/2024.
//

import SwiftUI

struct DetailView: View {
    
    let url : String?
    var body: some View {
        WebView(url : url)
    }
}

#Preview {
    DetailView(url: "hhtps://google.com")
}
