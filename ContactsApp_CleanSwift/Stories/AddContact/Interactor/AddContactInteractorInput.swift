//
//  ContactDetailInteractorInput.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

protocol AddContactInteractorInput {
    func setNewContact(contact: ContactModel)
    func deleteContact(contact: ContactModel)
}
