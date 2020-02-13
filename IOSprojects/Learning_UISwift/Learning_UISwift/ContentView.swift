//
//  ContenView.swift
//  Learning_UISwift
//
//  Created by Chinwa Williams on 13/02/2020.
//  Copyright © 2020 Chinwa Williams. All rights reserved.
//

import Foundation
//
//  ContentView.swift
//  Learning_UISwift
//
//  Created by Chinwa Williams on 26/01/2020.
//  Copyright © 2020 Chinwa Williams. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue = 50.0;
    @State var showAlert = false
    @State var randomNumber : Int =  Int.random(in: 1..<100)
    
    
    struct TextLabel: ViewModifier {
        func body(content: Content) -> some View {
            
           return content
            .foregroundColor(Color.init(UIColor.white))
            .font(Font.custom("AvenirNextCondensed-HeavyItalic", size: 20))
        }
    }
    
    var body: some View {
        VStack {
            
            HStack {
                
                Text("Put the bullseye as close as you can to:").modifier(TextLabel())
                Text("\(randomNumber)").modifier(TextLabel())
            }
            .padding(.init(top: 50, leading: 0, bottom: 0, trailing: 0))
            Spacer()
            
            VStack{
                HStack {
                    Text("0")
                    Slider(value: $sliderValue, in: 1...100)
                    Text("100")
                }
                Button(action: {
                    self.showAlert = !self.showAlert
                }) {
                    Text("Hit me")
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Important message"), message: Text("The slider has a value of \(Int(sliderValue.rounded()))"), dismissButton: .default(Text("Got it!")))
                }
                
            }
            
            Spacer()
            
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Start Over").modifier(TextLabel())
                    
                    //self.resetGame()
                }
                
                Spacer()
                Text("Score:").modifier(TextLabel())
                Text("999999")
                 .foregroundColor(Color.init(UIColor.white))
                Spacer()
                Text("Round:").modifier(TextLabel())
                Text("999")
                 .foregroundColor(Color.init(UIColor.white))
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Info").modifier(TextLabel())
                }
                
            }
                
                
                
                // .alert(isPresented: false, content: <#T##() -> Alert#>)
                
                .padding(.init(top: 0, leading: 0, bottom: 20, trailing: 0))
            
            
            
        }
        
        .background(Image("Background"), alignment: .center)
    }
    
    func resetGame(){
        sliderValue  = 50
        randomNumber =  50
//        showAlert = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
        
    }
}
