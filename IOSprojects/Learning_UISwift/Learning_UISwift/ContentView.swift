//
//  ContentView.swift
//  Learning_UISwift
//
//  Created by Chinwa Williams on 26/01/2020.
//  Copyright © 2020 Chinwa Williams. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert: Bool = false;
    
    var body: some View {
       
            
            //Header row
         VStack {
                   HStack {
                       Text("Put the bullseye as close as you can to:")
                   }
            
            //Slider row
            
            //button row
            
            //score row
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 896, height: 414))
    }
}
