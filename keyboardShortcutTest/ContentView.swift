//
//  ContentView.swift
//  keyboardShortcutTest
//
//  Created by 茅根啓介 on 2022/11/13.
//

import SwiftUI

struct ContentView: View {
     @State var change = 1
    var body: some View {
        NavigationStack {
            Text("\(change)")
                .font(.system(size: 100))
            .focusedSceneValue(\.change, $change)
            .frame(minWidth: 200, minHeight: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
