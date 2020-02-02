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
                
                
                var body: some View {
                    VStack {
                        
                        HStack {
                            
                           Text("Put the bullseye as close as you can to:")
                          Text("100")
                            }
                           .padding(.init(top: 50, leading: 0, bottom: 0, trailing: 0))
                            Spacer()
                                   
                        VStack{
                            HStack {
                                 Text("0")
                                     Slider(value: $sliderValue, in: 1...100)
                                      Text("100")
                                   }
                                 Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                     Text("Hit me")
                                   }
                                                   
                        }
                            
                           Spacer()
                        
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Start Over")
                            }
                            
                            Spacer()
                             Text("Score:")
                             Text("999999")
                               Spacer()
                            Text("Round:")
                            Text("999")
                            
                               Spacer()
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Info")
                            }
                            
                        }
                        
                        .padding(.init(top: 0, leading: 0, bottom: 20, trailing: 0))
                        
                   
                        
                    }
                }
            }

            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView().previewLayout(.fixed(width: 896, height: 414))
                }
            }
