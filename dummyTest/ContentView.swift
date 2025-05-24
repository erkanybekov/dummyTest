//
//  ContentView.swift
//  dummyTest
//
//  Created by Erlan Kanybekov on 5/24/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text:String = ""
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text )
                .frame(alignment: .center)
                .background(Color.yellow)
                .foregroundColor(.black)
                .frame(width: .infinity, height: 32)
                .clipShape(.rect(cornerRadius: 16))
                .padding(.bottom, 16)
                .padding(.horizontal, 16)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.yellow, lineWidth: 1)
                )
                .textInputAutocapitalization(TextInputAutocapitalization.never)

            
        }
        .ignoresSafeArea(.all)
        .padding()
        
        Text(text)
        
        switch text {
        case "":
            Text("Empty")
        case "swift":
            Text("yeah nigga")
        case "kotlin":
            Text("fuck ya go back for ya kmp")
        default:
            Text("Not Empty")
        }
        
    }
        
}

#Preview {
    ContentView()
}
