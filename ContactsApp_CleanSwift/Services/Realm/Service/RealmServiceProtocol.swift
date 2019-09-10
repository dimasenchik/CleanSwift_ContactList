//
//  RealmServiceProtocol.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

protocol RealmServiceProtocol {
    func getContacts() -> [ContactModel]
    func setContact(contact: ContactModel)
    func removeContact(id: Int)
    func getUniqueId() -> Int
}
