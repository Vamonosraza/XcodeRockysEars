import SwiftUI

struct MainPageView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text("Main Page")
            .font(.largeTitle)
            .foregroundColor(colorScheme.primary)
            .applyCustomNavigation(colorScheme: .dark)
    }
}

#Preview {
    MainPageView()
}//
//  MainPageView.swift
//  testingApp
//
//  Created by Jessy  Martinez  on 3/4/25.
//

