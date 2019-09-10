//
//  ContactModel.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class ContactModel {
    let id: Int
    var firstName: String
    var lastName: String
    var phone: String
    
    init(firstName: String = "", lastName: String = "", phone: String = "", id: Int = RealmService.shared.getUniqueId()) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
    }
}

//MARK: - Public methods
extension ContactModel {
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

//MARK: - RealmConvertable
extension ContactModel: RealmConvertable {
    static func mapFromRealmObject(_ object: ContactObject) -> ContactModel {
        let contact = ContactModel(firstName: object.firstName, lastName: object.lastName, phone: object.phone, id: object.id)
        
        return contact
    }
    
    func mapToRealmObject() -> ContactObject {
        let realmContact = ContactObject()
        
        realmContact.firstName = firstName
        realmContact.lastName = lastName
        realmContact.phone = phone
        realmContact.id = id
        
        return realmContact
    }
}
