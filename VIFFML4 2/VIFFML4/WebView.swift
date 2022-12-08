//
//  WebView.swift
//  VIFFML3
//
//  Created by Bradley Cox on 6/20/22.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    var webView: WKWebView?
    
    init (request: URLRequest) {
        self.webView = WKWebView()
        self.request = request
    }
    
    func makeUIView(context: Context) -> WKWebView {
        return webView!
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
    func goBack() {
        webView?.goBack()
    }
    
}
