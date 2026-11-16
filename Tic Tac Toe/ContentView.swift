//
//  ContentView.swift
//  Tic Tac Toe
//
//  Created by john francis on 11/11/26.
//
import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tic Tac Toe")
                .font (.title).bold()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3)) {
                ForEach(0..<9, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.blue)
                        .frame(width: 120, height: 120)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
