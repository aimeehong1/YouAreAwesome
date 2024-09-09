//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Aimee Hong on 9/6/24.
// test

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var lastImageNumber = -1
    @State private var lastMessageNumber = -1
    
    var body: some View {
        VStack {
        
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .padding()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
        
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You Are Awesome!", 
                                "You Are Great!",
                                "You Are Fantastic!",
                                "I Wish I Was You!",
                                "You Look Stunning!",
                                "I Idolize You 🤩",
                                "You're Doing Great!",
                                "You're So Classy!"]
                
                var messageNumber: Int
                repeat {
                    messageNumber = Int.random(in: 0...messages.count - 1)
                } while messageNumber == lastMessageNumber
                messageString = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber: Int
                repeat {
                    imageNumber = Int.random(in: 0...9)
                } while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber

            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
