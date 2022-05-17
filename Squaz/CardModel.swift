//
//  CardModel.swift
//  Squaz
//
//  Created by macbook on 17/05/2022.
//

import Foundation
import SwiftUI



struct Card : Identifiable{
    
    var id = UUID()
    var title : String
    var headline : String
    var imageName : String
    var callToAction :String
    var messages : String
    var gredientColors : [Color]
    
    
}


