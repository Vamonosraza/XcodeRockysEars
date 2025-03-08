//
//  SettingsView.swift
//  testingApp
//
//  Created by Jessy  Martinez  on 3/7/25.
//
import SwiftUI

struct SettingsPageView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text("Settings Page")
            .font(.largeTitle)
            .foregroundColor(colorScheme.primary)
    }
}

#Preview {
    SettingsPageView()
}
