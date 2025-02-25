//
//  ContentView.swift
//  ActionSheetDemo
//
//  Created by ace on 25/2/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        VStack {
            Button("Sheet") {
                showingSheet = true
            }
        }
        .sheet(isPresented: $showingSheet) {
            SheetPopupView()
                .presentationDetents([.height(500)])
        }
    }
}

struct SheetPopupView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(edges: .all)
            Image("robot")
        }
    }
}

#Preview {
    ContentView()
}

#Preview {
    SheetPopupView()
}
