//
//  AddContactWorker.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class AddContactWorker {
    
    //MARK: - Public methods
    func setNewContact(contact: ContactModel) {
        RealmService.shared.setContact(contact: contact)
    }
    
    func deleteContact(contact: ContactModel) {
        RealmService.shared.removeContact(id: contact.id)
    }
}
