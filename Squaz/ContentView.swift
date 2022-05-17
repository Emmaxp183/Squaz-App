//
//  ContentView.swift
//  Squaz
//
//  Created by macbook on 16/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(alignment: .center,spacing: 20) {
                ForEach(0 ..< 6) { item in
                    CardView()
                }
            }.padding(20)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
