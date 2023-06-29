//
//  thirdquestion.swift
//  questionApp
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct thirdquestion: View {
    @State private var name = ""
    @State private var option1 = ("40")
    @State private var option2 = ("50")
    @State private var option3 = ("60")
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemPurple)
                    .ignoresSafeArea()
                VStack {
                    Text("How many theives did AliBaba have?")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text(option1)
                    Button("40") {
                        option1 = "✅" } .font(.title).fontWeight(.heavy).foregroundColor(Color.black).padding()
                    
                    Text(option2)
                    Button("50") {
                        option2 = "❌" } .font(.title).fontWeight(.heavy).foregroundColor(Color.black).padding()
                    
                    Text(option3)
                    Button("60") {
                        option3 = "❌" } .font(.title).fontWeight(.heavy).foregroundColor(Color.black).padding()
                    
                    NavigationLink(destination: firstQuestion()) {
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
    
    struct thirdquestion_Previews: PreviewProvider {
        static var previews: some View {
            thirdquestion()
        }
    }
}
