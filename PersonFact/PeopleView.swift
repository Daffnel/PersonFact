//
//  CallPeopleView.swift
//  PersonFact
//
//  Created by Daniel A on 2025-04-26.
//

import SwiftData
import SwiftUI

struct PeopleView: View {

    @Environment(\.modelContext) var modelContext
    @Query var people: [Person]

    var body: some View {
        List {
            ForEach(people) { person in
                NavigationLink(value: person) {
                    Text(person.name)
                }
            }
            .onDelete(perform: deletePeople)
        }
    }

    init(searchString: String = "") {
        _people = Query(
            filter: #Predicate { person in
                if searchString.isEmpty {
                    true
                } else {
                    person.name.localizedStandardContains(searchString)
                }
            }
        )
    }

    func deletePeople(at offSets: IndexSet) {
        for offset in offSets {
            let person = people[offset]
            modelContext.delete(person)
        }
    }
}

#Preview {
    PeopleView()
}
