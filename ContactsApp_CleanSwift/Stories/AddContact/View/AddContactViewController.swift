//
//  ContactDetailViewController.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import UIKit

final class AddContactViewController: UIViewController, Alertable {

    //MARK: - IBOutlets
    @IBOutlet weak private var firstNameTextField: UITextField!
    @IBOutlet weak private var lastNameTextField: UITextField!
    @IBOutlet weak private var phoneTextField: UITextField!
    @IBOutlet weak private var saveButton: UIButton!
    @IBOutlet weak private var deleteButton: UIButton!
    
    //MARK: - Properties
    var moduleInput: AddContactModuleInput?
    var interactor: AddContactInteractorInput?
    var router: AddContactRouterInput?
    
    private var currentContact: ContactModel?
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContactFields()
    }
    
    //MARK: - IBActions
    @IBAction private func saveAction(_ sender: Any) {
        generateContactModel()
        
        guard let currentContact = currentContact else { return }
        
        interactor?.setNewContact(contact: currentContact)
    }
    
    @IBAction private func deleteAction(_ sender: Any) {
        generateContactModel()
        
        guard let currentContact = currentContact else { return }
        
        interactor?.deleteContact(contact: currentContact)
    }
    
    //MARK: - Private methods
    private func setupContactFields() {
        if let currentContact = currentContact {
            firstNameTextField.text = currentContact.firstName
            lastNameTextField.text = currentContact.lastName
            phoneTextField.text = currentContact.phone
            deleteButton.isHidden = false
        } else {
            deleteButton.isHidden = true
        }
    }
    
    private func generateContactModel() {
        if let firstName = firstNameTextField.text, let lastName = lastNameTextField.text, let phone = phoneTextField.text {
            if let id = currentContact?.id {
                currentContact = ContactModel(firstName: firstName, lastName: lastName, phone: phone, id: id)
            } else {
                currentContact = ContactModel(firstName: firstName, lastName: lastName, phone: phone)
            }
        }
    }

}

//MARK: - ContactDetailViewInput
extension AddContactViewController: AddContactViewInput {
    func presentContact(contact: ContactModel) {
        currentContact = contact
    }
    
    func successContactAdding() {
        router?.showSuccessAlert()
    }
    
    func successContactDeleting() {
        router?.showDeletingAlert()
    }
}
