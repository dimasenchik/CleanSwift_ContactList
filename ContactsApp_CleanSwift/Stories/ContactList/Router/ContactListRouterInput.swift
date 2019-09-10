//
//  ContactListRouterInput.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

protocol ContactListRouterInput: class {
    func routeToAddContact()
    func routeToViewContact(contact: ContactModel)
}
