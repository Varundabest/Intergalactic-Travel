//
//  ContentView.swift
//  Intergalactic Travel
//
//  Created by Varun on 28/09/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                StarLink(name: "Blue Star")
                    .padding()
                StarLink(name: "Red Dwarf")
                    .foregroundColor(.red)
            }
            .navigationBarTitle("Intergalactic Travel", displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}

struct StarLink: View {
    let name : String
    var body: some View {
        NavigationLink("Travels to \(name)") {
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}
