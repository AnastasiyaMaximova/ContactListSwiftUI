//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Anastasya Maximova on 10.02.2025.
//

import SwiftUI

struct ContactsView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons){person in
                NavigationLink(destination: PersonDetailInformationView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactsView(persons: Person.getContactList())
}
