//
//  EditPersonView.swift
//  PersonFact
//
//  Created by Daniel A on 2025-04-26.
//
//  Vy för att uppdatera våran persons Data

import SwiftUI

struct EditPersonView: View {
    
   @Bindable var person: Person
    
    var body: some View {
        Form{
            Section{
                TextField("Name", text: $person.name)
                    .textContentType(.name)
                
                TextField("Email adress", text: $person.emailAdress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            Section("Notes"){
                TextField("Details about this person", text :
                            $person.details, axis: .vertical)  //växer vertikalt ju mer som skrivs in
            }
        }
        .navigationTitle("Edit Person")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditPersonView()
//}


