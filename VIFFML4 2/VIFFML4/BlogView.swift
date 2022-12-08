//
//  BlogView.swift
//  VIFFML4
//
//  Created by Bradley Cox on 6/28/22.
//

import SwiftUI

struct BlogView: View {
    
    let webview = WebView(request: URLRequest(url: URL(string: "https://www.lovevamarkets.org/posts")!))
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                    self.webview.goBack()
                }, label: {
                    Image(systemName: "chevron.backward")
                    Text("Back")
                })
                .padding()
                Spacer()
            }
            webview
            
        }
        
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        BlogView()
    }
}
