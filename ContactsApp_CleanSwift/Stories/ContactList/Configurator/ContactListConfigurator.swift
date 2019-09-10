//
//  CategoryListConfigurator.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class ContactListConfigurator {
    
    //MARK: - Public methods
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? ContactListViewController {
            configure(viewController: viewController)
        }
    }
    
    //MARK: - Private methods
    private func configure(viewController: ContactListViewController) {
        let interactor = ContactListInteractor()
        let presenter = ContactListPresenter()
        let router = ContactListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.view = viewController
        router.viewController = viewController
    }
}
