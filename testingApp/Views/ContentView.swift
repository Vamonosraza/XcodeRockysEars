//
//  ContentView.swift
//  testingApp
//
//  Created by Jessy  Martinez  on 3/4/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                VStack{
                    Text("Welcome to")
                        .font(.largeTitle)
                        .foregroundColor(colorScheme.primary)
                        .padding(.bottom,5)
                    Text("RockysEars")
                        .font(.system(size:60))
                        .fontWeight(.bold)
                        .foregroundColor(colorScheme.primary)
                        .padding(.bottom,20)
                }
                Spacer()
                Text("The app to interpret your pets demands!")
                    .foregroundColor(colorScheme.secondary)
                    .padding()
                Spacer()
                NavigationLink(destination: MainPageView()) {
                    Text("Continue")
                        .font(.title2)
                        .padding()
                        .background(colorScheme.button)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom,20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(colorScheme.background)
        }
    }
}


#Preview {
    ContentView()
}
