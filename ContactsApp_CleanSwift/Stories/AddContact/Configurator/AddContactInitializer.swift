//
//  AddContactInitializer.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class AddContactInitializer: NSObject {
    
    //MARK: - IBOutlets
     @IBOutlet weak private var addContactViewController: AddContactViewController!
    
    //MARK: - Life cycle
    override func awakeFromNib() {
        let configurator = AddContactConfigurator()
        configurator.configureModuleForViewInput(viewInput: addContactViewController)
    }
}
