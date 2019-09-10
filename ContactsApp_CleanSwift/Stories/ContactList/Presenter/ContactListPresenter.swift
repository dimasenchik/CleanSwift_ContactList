//
//  ContactListPresenter.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class ContactListPresenter {
    
    //MARK: - Properties
    weak var view: ContactListViewInput?
}

//MARK: - ContactListPresenterInput
extension ContactListPresenter: ContactListPresenterInput {
    func showContacts(contacts: [ContactModel]) {
        view?.displayContacts(contacts: contacts)
    }
}
