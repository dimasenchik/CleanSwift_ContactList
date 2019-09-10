//
//  ContactListWorker.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class ContactListWorker {
    
    //MARK: - Public methods
    func getAvailableContacts() -> [ContactModel] {
        return RealmService.shared.getContacts()
    }
    
}
