//
//  SurveyView.swift
//  VIFFML4
//
//  Created by Bradley Cox on 6/29/22.
//

import SwiftUI

struct SurveyView: View {
    var body: some View {
        
        WebView(request: URLRequest(url: URL(string: "https://forms.gle/61x465vk8w5Gi632A")!))
        
    }
}

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
