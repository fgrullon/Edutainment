//
//  ContentView.swift
//  Edutainment
//
//  Created by Frank Grullon on 6/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var number = Int.random(in: 2..<12)
    @State private var multiplier = Int.random(in: 1...12)
    
    @State private var wrong1 = Int.random(in: 1...100)
    @State private var wrong2 = Int.random(in: 1...100)
    
    @State private var answer = 0
    
    var body: some View {
        NavigationStack{
            VStack {
                Stepper("Select number: \(number)", value: $number, in: 2...12)
                Form{
                    Section("Select number of questions"){
                        HStack{
                            ForEach(1...3, id: \.self){
                                value in
                                    Button("\(value)", action: questions)
                                        .frame(width: 100, height: 30)
                                        .background(.cyan)
                                        .cornerRadius(5)
                                        .shadow(radius: 10)
                                        .foregroundColor(.white)
                                        .bold()
                            }
                        }
                       
                    }
             
                }
            }
            .frame(height: 150)
            VStack {
                VStack{
                    Text("What is \(number) x \(multiplier)?")
                    ForEach(1...3, id: \.self){
                        value in
                        withAnimation{
                            Button("\(value)", action: questions)
                        }
                    }
                    .frame(width: 100, height: 30)
                    .background(.cyan)
                    .cornerRadius(5)
                    .shadow(radius: 10)
                    .foregroundColor(.white)
                    .bold()
                }
            }
            .padding()
            
            .navigationTitle("Educational App")
            
        }

   
    }
}

func questions(){
    
}
#Preview {
    ContentView()
}
