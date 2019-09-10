//
//  RealmService.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation
import RealmSwift

final class RealmService {
    static let shared = RealmService()
    
    private let realm = try! Realm()
    private init() {}
}

extension RealmService: RealmServiceProtocol {
    func getContacts() -> [ContactModel] {
        let contacts = realm.objects(ContactObject.self)
        let mappedContacts = Array(contacts.map { ContactModel.mapFromRealmObject($0) })
        return mappedContacts
    }
    
    func setContact(contact: ContactModel) {
        if let existingContact = realm.object(ofType: ContactObject.self, forPrimaryKey: contact.id) {
            try! realm.write {
                existingContact.firstName = contact.firstName
                existingContact.lastName = contact.lastName
                existingContact.phone = contact.phone
            }
        } else {
            try! realm.write {
                realm.add(contact.mapToRealmObject())
            }
        }
    }
    
    func removeContact(id: Int) {
        try! realm.write {
            if let object = realm.object(ofType: ContactObject.self, forPrimaryKey: id) {
                realm.delete(object)
            }
        }
    }
    
    func getUniqueId() -> Int {
        let availableObjects = realm.objects(ContactObject.self).map { ContactModel.mapFromRealmObject($0) }
        let sortedObjects = Array(availableObjects.sorted(by: {$0.id > $1.id}))
        if let lastAddedContact = sortedObjects.last {
            return lastAddedContact.id + 1
        } else {
            return 0
        }
    }
    
}
