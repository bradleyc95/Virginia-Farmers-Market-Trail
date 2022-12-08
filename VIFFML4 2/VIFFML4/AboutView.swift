//
//  AboutView.swift
//  VIFFML4
//
//  Created by Bradley Cox on 6/20/22.
//

import SwiftUI

struct AboutView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView {
            VStack {
                Text("About the Trail")
                    .fontWeight(.semibold)
                    .font(.title)
                    .padding()
                Spacer()
            
                
                Text("If you love shopping at your local farmers market and eating with the season, this trail is for you. The Virginia is for Farmers Market Lovers Trail connects local food lovers with Virginia’s farmers markets, agritourism operations, and farm-to-table restaurants.")
                    .font(.body)
                    .truncationMode(.head)
                    .frame(width: 350, alignment: .leading)
                    .padding()
                
                
                Text("The Trail is a collaboration between the Virginia Farmers Market Association, Virginia Tourism Corporation, and Virginia State University.")
                    .font(.body)
                    .frame(width: 350, alignment: .leading)
                    .padding()
                
                Text("Start planning your local food centered road trip today!")
                    .font(.body)
                    .frame(width: 350, alignment: .leading)
                    .padding()
                
                VStack {
                    HStack {
                        Image(colorScheme == .dark ? "logo2" : "logo1")
                            .resizable()
                            .frame(width: 250, height: 100)
                    }
                    VStack {
                        Image(colorScheme == .dark ? "VAFMAdark" : "VAFMAlight")
                            .resizable()
                            .frame(width: 200, height: 100)
                            .padding()
                        Image("VSUtransparent")
                            .resizable()
                            .frame(width: 200, height: 100)
                    }
                }
                .padding()
                
                Text("Funding for this project was made possible by the U.S. Department of Agriculture’s (USDA) Agricultural Marketing Service through grant 21FMPPVA1084. Its contents are solely the responsibility of the authors and do not necessarily represent the official views of the USDA. ")
                    .font(.body)
                    .frame(width: 350, alignment: .leading)
                    .padding()
                
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
