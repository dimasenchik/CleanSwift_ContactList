//
//  AddContactRouter.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation
import UIKit

final class AddContactRouter: AddContactRouterInput {
    
    //MARK: - Properties
    weak var viewController: AddContactViewController?
    
    //MARK: - Routing
    func showSuccessAlert() {
        viewController?.displayMessage("Success", message: "Contact successfully created", actions: nil, handler: popViewControllerAction())
    }
    
    func showDeletingAlert() {
        viewController?.displayMessage("Success", message: "Contact was successfully deleted", actions: nil, handler: popViewControllerAction())
    }
    
    //MARK: - Private methods
    private func popViewControllerAction() -> ((UIAlertAction) -> ()) {
        return { [weak self] _ in
            self?.viewController?.navigationController?.popViewController(animated: true)
        }
    }
    
}
