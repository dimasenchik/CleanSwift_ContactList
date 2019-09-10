//
//  ContactListRouter.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation
import UIKit

final class ContactListRouter: ContactListRouterInput {
    
    //MARK: - Properties
    weak var viewController: ContactListViewController?
    
    //MARK: - Routing
    func routeToAddContact() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let addContactVC = storyboard.instantiateViewController(withIdentifier: "addContactVC") as! AddContactViewController
        viewController?.navigationController?.pushViewController(addContactVC, animated: true)
    }
    
    func routeToViewContact(contact: ContactModel) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let addContactVC = storyboard.instantiateViewController(withIdentifier: "addContactVC") as! AddContactViewController
        addContactVC.moduleInput?.ignitionModuleWith(contact: contact)
        viewController?.navigationController?.pushViewController(addContactVC, animated: true)
    }
    
}
