//
//  SectionContactList.swift
//  ContactListSwiftUI
//
//  Created by Anastasya Maximova on 10.02.2025.
//

import SwiftUI

struct SectionContactsView: View {
    
    let persons: [Person]
    
    @State private var singleSection: UUID?

    var body: some View {
        NavigationStack{
            List(selection: $singleSection) {
                ForEach(persons){ person in
                    Section(header: Text(person.fullName)) {
                        Label(person.phoneNumber, systemImage: "phone")
                        Label(person.email, systemImage: "envelope")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    SectionContactsView(persons: Person.getContactList())
}
