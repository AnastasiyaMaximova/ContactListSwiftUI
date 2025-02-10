//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Anastasya Maximova on 10.02.2025.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        TabView{
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            SectionContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
