//
//  Commands.swift
//  keyboardShortcutTest
//
//  Created by 茅根啓介 on 2022/11/13.
//

import SwiftUI

struct EditCommands: Commands {
    @FocusedBinding(\.change) var change
    
    var body: some Commands {
        CommandMenu("Count") {
            Button(action: {
                change = change! + 1
            }) {
                Text("Count Up")
            }
            .keyboardShortcut("U", modifiers: [.command])
            .disabled(change == nil)
            
            Button(action: {
                change = change! - 1
            }) {
                Text("Count Down")
            }
            .keyboardShortcut("D", modifiers: [.command])
            .disabled(change == nil)
        }
    }
}

struct ChangeKey: FocusedValueKey {
    typealias Value = Binding<Int>
}

extension FocusedValues {
    var change: Binding<Int>? {
        get { self[ChangeKey.self] }
        set { self[ChangeKey.self] = newValue }
    }
}
