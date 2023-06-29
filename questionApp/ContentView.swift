//
//  ContentView.swift
//  questionApp
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = ("Hello! Welcome to the Disney Trivia Quiz.")
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBlue)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20.0) {
                    Image("disneycastle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    Text(textTitle).font(.headline)
                    
                    Text("Click on the button below to continue!").foregroundColor(Color.gray) .border(Color .gray, width: 1)
                    
                    NavigationLink(destination: secondQuestion()) {
                        Text("Click me!")
                    }
                    
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.blue).multilineTextAlignment(.center)
                }
                .padding()
                .background(Rectangle()
                    .foregroundColor(.white))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding() }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    }
    
    
}
