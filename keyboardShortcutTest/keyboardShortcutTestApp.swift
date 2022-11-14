//
//  keyboardShortcutTestApp.swift
//  keyboardShortcutTest
//
//  Created by 茅根啓介 on 2022/11/13.
//

import SwiftUI

@main
struct keyboardShortcutTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        .commands {
            ToolbarCommands()
            EditCommands()
        }
    }
}
