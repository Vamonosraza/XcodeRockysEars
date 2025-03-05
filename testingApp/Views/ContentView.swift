//
//  ContentView.swift
//  testingApp
//
//  Created by Jessy  Martinez  on 3/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                VStack{
                    Text("Welcome to")
                        .font(.largeTitle)
                        .foregroundColor(Color(hex:"4477CE"))
                        .padding(.bottom,5)
                    Text("RockysEars")
                        .font(.system(size:60))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex:"4477CE"))
                        .padding(.bottom,20)
                }
                Spacer()
                Text("The app to interpret your pets demands!")
                    .foregroundColor(Color(hex:"8CABFF"))
                    .padding()
                Spacer()
                NavigationLink(destination: MainPageView()) {
                    Text("Continue")
                        .font(.title2)
                        .padding()
                        .background(Color(hex: "03C988"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom,20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "512B81"))
        }
    }
}


extension Color {
    init(hex: String){
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let red = Double((rgbValue & 0xff0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00ff00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000ff) / 255.0
        self.init(red:red, green:green, blue:blue)
    }
}

#Preview {
    ContentView()
}
