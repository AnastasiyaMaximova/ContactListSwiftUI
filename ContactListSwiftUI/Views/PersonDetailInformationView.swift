//
//  PersonDetailInformation.swift
//  ContactListSwiftUI
//
//  Created by Anastasya Maximova on 10.02.2025.
//

import SwiftUI

struct PersonDetailInformationView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "envelope")
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    PersonDetailInformationView(person: Person.getContactList().first!)
}
