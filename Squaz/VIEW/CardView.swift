//
//  CardView.swift
//  Squaz
//
//  Created by macbook on 17/05/2022.
//

import SwiftUI

struct CardView: View {
  
    //MARK: - PROPERTIES
    
    var card : Card
    @State private var FadeIn = false
    @State private var moveText = false
    @State private var moveButton = false
    var haptic = UIImpactFeedbackGenerator(style: .heavy)
    @State var showAlert = false
    //MARK: - BODY
  
    var body: some View {
       
        ZStack {
            //DEVELOPER IMAGE
            Image(card.imageName)
                .opacity(FadeIn ? 1.0 : 0.0)
          
            VStack {
                //TITLE
                VStack {
                    Text(card.title).foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                    .padding(.top,10)
                    //HEADLINE
                    Text(card.headline)
                    .foregroundColor(.white).italic()
                }.offset(y: moveText ? 20 : -218 )
                
                
                Spacer()
               //BUTTON
                Button(action:{
                    playSound(Sound: "sound-chime", Type: "mp3")
                    self.haptic.impactOccurred()
                    self.showAlert.toggle()
                }){
                    
                   
                    Text(card.callToAction)
                        Image(systemName: "arrow.right.circle")
                    
                    
                    
                }.padding(.vertical).padding(.horizontal,30)
                    .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing)).clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous)).padding().foregroundColor(.white)
                    .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
                    .offset(y: moveButton ? -20 : 10)
            }
       
        
        
        
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
       
        .onAppear(){
            //FADE IN IMAGE
            withAnimation(.linear(duration: 1.2)){
                
                self.FadeIn.toggle()
            }
            
           // MOVE THE TEXT
        
            withAnimation(.linear(duration: 0.8)){
                
                self.moveText.toggle()
                self.moveButton.toggle()
            }
            
        }
        .alert(isPresented: $showAlert ) {
            Alert(
            title: Text(card.title),
            message: Text(card.message),
            dismissButton: .default(Text("OK"))
            )
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[1])
            .previewLayout(.sizeThatFits)
    }
}
