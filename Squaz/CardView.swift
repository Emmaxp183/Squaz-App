//
//  CardView.swift
//  Squaz
//
//  Created by macbook on 17/05/2022.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    var gradient : [Color] = [Color("Color01"),Color("Color02")]
    
    //MARK: - BODY
    var body: some View {
       
        
        
        ZStack {
            Image("developer-no1")
          
            VStack {
                Text("Swift UI").foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                    .padding(.top,10)
                
                
                Text("Build better apps with less code")
                    .foregroundColor(.white).italic()
                Spacer()
               
                Button(action:{}){
                    
                   
                        Text("Learn")
                        Image(systemName: "arrow.right.circle")
                    
                    
                    
                }.padding(.vertical).padding(.horizontal,30)
                    .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing)).clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous)).padding().foregroundColor(.white)
                    .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
       
        
        
        
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
