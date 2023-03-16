//
//  AvocadosApp.swift
//  Avocados
//
//  Created by Александр Карпов on 14.03.2023.
//

import SwiftUI

@main
struct AvocadosApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                AvocadosView()
                    .tabItem {
                        Image("tabicon-branch")
                        Text("Avocados")
                    }
                ContentView()
                    .tabItem {
                        Image("tabicon-book")
                        Text("Recipes")
                    }
                RipeningStagesView()
                    .tabItem {
                        Image("tabicon-avocado")
                        Text("Ripening")
                    }
                SettingsView()
                    .tabItem {
                        Image("tabicon-settings")
                        Text("Settings")
                    }
                    
            }
            .edgesIgnoringSafeArea(.top)
            .accentColor(Color.primary)
        }
    }
}
