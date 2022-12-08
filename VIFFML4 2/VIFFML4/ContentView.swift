//
//  ContentView.swift
//  VIFFML4
//
//  Created by Bradley Cox on 6/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            HeaderView()
            
            
            TabView {
                MapView()
                    .tabItem {
                        Image(systemName: "map")
                        Text("Map")
                    }
                BlogView()
                    .tabItem {
                        Image(systemName: "leaf")
                        Text("Excursions")
                    }
                SurveyView()
                    .tabItem {
                        Image(systemName: "gift")
                        Text("Drawing")
                    }
                AboutView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("About")
                    }
            }
        } //: VStack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
