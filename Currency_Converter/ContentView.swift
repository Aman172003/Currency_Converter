//
//  ContentView.swift
//  Currency_Converter
//
//  Created by Aman on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                //pracing pony image
                Image(.prancingpony)
                //make the image compatible to be fit
                    .resizable()
               //below maintains the original height and width of the image
                    .scaledToFit()
                    .frame(height: 200)
                
                //currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //currency conversion section
                HStack{
                    //left conversion section
                    VStack{
                        //currency
                        HStack{
                            //currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //currency text
                            Text("Silver Piece")
                            //headline makes font thick
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        
                        //textfield
                        Text("Textfields")
                    }
                    
                    //equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    //right conversion section
                    VStack{
                        //currency
                        HStack{
                            //currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            //currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        
                        //textfield
                        Text("text field")
                    }
                }
                
                Spacer()
                
                //info button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
//            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
