//
//  secondQuestion.swift
//  questionApp
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct secondQuestion: View {
    @State private var name = ""
    @State private var option1 = ("7")
    @State private var option2 = ("12")
    @State private var option3 = ("14")
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemOrange)
                    .ignoresSafeArea()
                VStack {

                    Text("How many brothers does Hans have?")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text(option1)
                    Button("7") {
                        option1 = "❌" } .font(.title).fontWeight(.heavy).foregroundColor(Color.black).padding()
                    
                    Text(option2)
                    Button("12") {
                        option2 = "✅" } .font(.title).fontWeight(.heavy).foregroundColor(Color.black).padding()
                    
                    Text(option3)
                    Button("14") {
                        option3 = "❌" } .font(.title).fontWeight(.heavy).foregroundColor(Color.black).padding()
                    
                    NavigationLink(destination: thirdquestion()) {
                        Text("Click on this text for the next questiom")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
        }
    }
    
    struct secondQuestion_Previews: PreviewProvider {
        static var previews: some View {
            secondQuestion()
        }
    }
}
