//
//  LogoView.swift
//  VIFFML4
//
//  Created by Bradley Cox on 6/20/22.
//

import SwiftUI

struct LogoView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack(spacing: 4) {
            
            Image(colorScheme == .dark ? "logo2" : "logo1")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 50, alignment: .center)
            
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
