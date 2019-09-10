//
//  ContactListInteractor.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class ContactListInteractor: ContactListInteractorInput {
    
    //MARK: - Properties
    var presenter: ContactListPresenterInput?
    private var worker = ContactListWorker()
    
    //MARK: - ContactListInteractorInput
    func fetchContacts() {
        let contacts = worker.getAvailableContacts()
        presenter?.showContacts(contacts: contacts)
    }
}
