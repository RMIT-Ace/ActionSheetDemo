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
                .presentationDetents([.height(400)])
        }
    }
}

struct SheetPopupView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(edges: .all)
            Image("robot")
            VStack {
                List {
                    Text("A")
                        .listRowBackground(Color.red.opacity(0.4))
                    Text("B")
                        .listRowBackground(Color.green.opacity(0.4))
                    Text("C")
                        .listRowBackground(Color.blue.opacity(0.4))
                }
                .listStyle(.plain)
                .frame(width: 300, height: 200)
            }
        }
    }
}

#Preview {
    ContentView()
}

#Preview {
    SheetPopupView()
}
