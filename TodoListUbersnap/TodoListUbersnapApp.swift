//
//  TodoListUbersnapApp.swift
//  TodoListUbersnap
//
//  Created by Yuga Samuel on 03/08/23.
//

import SwiftUI

@main
struct TodoListUbersnapApp: App {
    @StateObject var todoViewModel = TodosViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(todoViewModel)
        }
    }
}
