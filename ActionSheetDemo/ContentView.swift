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
    let choices: [String] = ["A", "B", "C"]
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(edges: .all)
            Image("robot")
            VStack {
                List {
                    ForEach(choices, id: \.self) { choice in
                        Text(choice)
                            .listRowBackground(Color.green.opacity(0.4))
                    }
                }
                .listStyle(.plain)
                .listRowSpacing(3.0)
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
