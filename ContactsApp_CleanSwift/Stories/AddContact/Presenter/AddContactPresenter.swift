//
//  AddContactPresenter.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class AddContactPresenter {
    
    //MARK: - Properties
    weak var view: AddContactViewInput?
}

//MARK: - AddContactModuleInput
extension AddContactPresenter: AddContactModuleInput {
    func ignitionModuleWith(contact: ContactModel) {
        view?.presentContact(contact: contact)
    }
}

//MARK: - AddContactPresenterInput
extension AddContactPresenter: AddContactPresenterInput {
    func successContactAdding() {
        view?.successContactAdding()
    }
    
    func successContactDeleting() {
        view?.successContactDeleting()
    }
}
