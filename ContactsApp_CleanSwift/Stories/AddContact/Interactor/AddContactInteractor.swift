//
//  ContactDetailInteractor.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class AddContactInteractor: AddContactInteractorInput {
    
    //MARK: - Properties
    var presenter: AddContactPresenterInput?
    private var worker = AddContactWorker()
    
    //MARK: - AddContactInteractorInput
    func setNewContact(contact: ContactModel) {
        worker.setNewContact(contact: contact)
        presenter?.successContactAdding()
    }
    
    func deleteContact(contact: ContactModel) {
        worker.deleteContact(contact: contact)
        presenter?.successContactDeleting()
    }
}
