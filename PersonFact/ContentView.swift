//
//  ContentView.swift
//  PersonFact
//
//  Created by Daniel A on 2025-04-26.
//
import SwiftData
import SwiftUI

struct ContentView: View {

    @Environment(\.modelContext) var modelContext
    @State private var path = [Person]()
    @State private var searchText = ""

    var body: some View {
        NavigationStack(path: $path) {
            PeopleView(searchString: searchText)
            .navigationTitle("Face Facts")
            .navigationDestination(for: Person.self) { person in
                EditPersonView(person: person)

            }
            .toolbar {
                Button {
                    addPerson()
                } label: {
                    Image(systemName: "plus")
                }

            }
            .searchable(text: $searchText)
        }
    }

    func addPerson() {
        let person = Person(name: "", emailAdress: "", details: "")
        modelContext.insert(person)
        path.append(person)
    }
}
#Preview {
    ContentView()
}
