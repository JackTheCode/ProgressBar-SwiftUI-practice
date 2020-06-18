//
//  Webview.swift
//  ProgressBar-SwiftUI
//
//  Created by phatnt on 6/17/20.
//  Copyright © 2020 phatnt. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    
    let webView = WKWebView()
    @ObservedObject var webViewModel: WebviewModel
        
    func makeCoordinator() -> Coordinator {
        Coordinator(self, webViewModel: webViewModel)
    }
    
    func makeUIView(context: Context) -> WKWebView {
        if let url = URL(string: webViewModel.link) {
            webView.load(URLRequest(url: url))
        }
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
    
}
