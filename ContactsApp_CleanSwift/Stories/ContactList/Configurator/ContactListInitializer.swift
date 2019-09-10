//
//  ContactListInitializer.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class ContactListInitializer: NSObject {
    
    //MARK: - IBOutlets
    @IBOutlet weak private var contactListViewController: ContactListViewController!
    
    //MARK: - Life cycle
    override func awakeFromNib() {
        let configurator = ContactListConfigurator()
        configurator.configureModuleForViewInput(viewInput: contactListViewController)
    }
}
