//
//  ContentView.swift
//  Squaz
//
//  Created by macbook on 16/05/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var cards : [Card] = cardData
     
    var body: some View {
        
        
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(alignment: .center,spacing: 20) {
                ForEach(cards) { Cards in
                      
                    CardView(card: Cards)
                 
                }
            }.padding(20)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
