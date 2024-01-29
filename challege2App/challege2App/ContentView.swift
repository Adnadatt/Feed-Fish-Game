//
//  ContentView.swift
//  challege2App - fish game
//
//  Created by Chen, Amanda M on 1/25/24.
//

import SwiftUI

struct ContentView: View {
    //@State private var txt = "Namaste"
    @State private var size = 30.0
    @State private var click = 0
    @State private var img = "fish.fill"
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color("SkyBlue").gradient)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image(systemName: img)
                    .resizable()
                    .foregroundColor(.orange)
                    .frame(width: size, height: size)
                    .scaledToFit()
                    
                
                Spacer()
                
                HStack{
                    Button("Feed your Fish"){
                        
                        if(click == 2){
                            img = "rays"
                            click += 1
                        }else if(click == 1){
                            img = "burst"
                            click += 1
                        } else if(click == 3){
                            img = ""
                        }else if(size > 340){
                            img = "burst.fill"
                            click += 1
                        }
                        else{
                            size += 20
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .bold()
                    
                }
                
                
                
                
            }
            .padding()
            .tint(Color("Jonquil"))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
