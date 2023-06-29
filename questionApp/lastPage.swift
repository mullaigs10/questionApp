//
//  lastPage.swift
//  questionApp
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct lastPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBlue)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20.0) {
                    Image("flynnrider")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    Text("Thank You for doing the Disney Trivia Quiz!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                }
                .padding()
                .background(Rectangle()
                    .foregroundColor(.white))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding() }
        }
    }
}

struct lastPage_Previews: PreviewProvider {
    static var previews: some View {
        lastPage()
    }
}
