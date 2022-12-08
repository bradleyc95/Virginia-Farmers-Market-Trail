//
//  HeaderView.swift
//  VIFFML4
//
//  Created by Bradley Cox on 6/20/22.
//

import SwiftUI
import WebKit

struct HeaderView: View {
    
    @State private var isAnimated: Bool = false
    
    var body: some View {
        
        HStack {
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
                
            Spacer()
        }
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
