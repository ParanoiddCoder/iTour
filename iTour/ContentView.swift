//
//  ContentView.swift
//  iTour
//
//  Created by Paranoid Coder on 09/02/25.
//
import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    
    @Query var destinations: [Destination]
    var body: some View {
        NavigationStack{
            List{
                ForEach(destinations){ destination in
                    VStack(alignment: .leading){
                        Text(destination.name)
                            .font(.headline)
                        
                        Text(destination.date.formatted(date: .long, time: .shortened))
                    }
                }
            }
            .navigationTitle("iTour")
            .toolbar{
                Button("Add Samples", action: addSamples)
            }
        }
    }
    func addSamples() {
        let welligton = Destination( name: "Welligton")
        let sydney = Destination( name: "Sydney")
        let paris = Destination( name: "Paris")
        
        modelContext.insert(welligton)
        modelContext.insert(sydney)
        modelContext.insert(paris)
    }
}

#Preview {
    ContentView()
}
