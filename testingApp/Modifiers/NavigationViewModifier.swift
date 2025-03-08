//
//  NavigationViewModifier.swift
//  testingApp
//
//  Created by Jessy  Martinez  on 3/7/25.
//
import SwiftUI

struct NavigationViewModifier : ViewModifier {
    let colorScheme: ColorScheme
    func body (content: Content) -> some View {
        NavigationView {
            TabView {
                content
                    .tabItem{Image(systemName: "house")
                            .foregroundColor(colorScheme.primary)
                        Text("Home")
                    }
                SettingsPageView()
                    .tabItem{
                        Image(systemName: "gear")
                            .foregroundColor(colorScheme.primary)
                        Text("Settings")
                    }
            }
            .navigationTitle("RockysEars")
        }
    }
}

extension View {
    func applyCustomNavigation(colorScheme: ColorScheme) -> some View {
        self.modifier(NavigationViewModifier(colorScheme: colorScheme))
    }
}
