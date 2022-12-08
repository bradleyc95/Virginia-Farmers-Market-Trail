//
//  MapView.swift
//  VIFFML4
//
//  Created by Bradley Cox on 6/20/22.
//

import SwiftUI

struct MapView: View {
    
    let webview = WebView(request: URLRequest(url: URL(string: "https://marketspread.com/virginia/?stripped=1")!))
    
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

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
