//
//  WebView.swift
//  HackerNews
//
//  Created by Muhammd Mukthayar on 14/10/2024.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let url: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let safeURL = URL(string: url ?? "https://github.com/Mukthayar1") else { return  }
        let request = URLRequest(url: safeURL)
        webView.load(request)
    }
}

