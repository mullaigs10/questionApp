//
//  firstQuestion.swift
//  questionApp
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct firstQuestion: View {
    @State private var name = ""
    @State private var option1 = ("Eugene Fitzherbert")
    @State private var option2 = ("Flynn Rider")
    @State private var option3 = ("Rapunzel's Husband")
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemPink)
                    .ignoresSafeArea()
                VStack {
                    Text("Who is the best Disney character of all time?")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text(option1)
                    Button("Eugene Fitzherbert") {
                        option1 = "✅" } .font(.title).fontWeight(.heavy).foregroundColor(Color.black).padding()
                    
                    Text(option2)
                    Button("Flynn Rider") {
                        option2 = "✅" } .font(.title).fontWeight(.heavy).foregroundColor(Color.black).padding()
                    
                    Text(option3)
                    Button("Rapunzel's Husband") {
                        option3 = "✅" } .font(.title).fontWeight(.heavy).foregroundColor(Color.black).padding()
                    
                    NavigationLink(destination: lastPage()) {
                        Text("Click here!")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
        }
    }
    
    struct firstQuestion_Previews: PreviewProvider {
        static var previews: some View {
            firstQuestion()
        }
    }
}
