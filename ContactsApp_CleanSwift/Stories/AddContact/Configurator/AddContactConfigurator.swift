//
//  AddContactConfigurator.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation

final class AddContactConfigurator {
    
    //MARK: - Public methods
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? AddContactViewController {
            configure(viewController: viewController)
        }
    }
    
    //MARK: - Private methods
    private func configure(viewController: AddContactViewController) {
        let interactor = AddContactInteractor()
        let presenter = AddContactPresenter()
        let router = AddContactRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.view = viewController
        router.viewController = viewController
        viewController.moduleInput = presenter
    }
}
