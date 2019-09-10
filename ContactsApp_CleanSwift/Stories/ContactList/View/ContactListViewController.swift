//
//  ContactListViewController.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation
import UIKit

final class ContactListViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak private var contactsTableView: UITableView!
    
    //MARK: - Properties
    var interactor: ContactListInteractorInput?
    var router: ContactListRouterInput?
    
    private var availableContacts: [ContactModel] = [] {
        didSet {
            contactsTableView.reloadData()
        }
    }
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        setupTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        fetchContacts()
    }
    
    //MARK: - IBActions
    @IBAction func routeToAddAction(_ sender: Any) {
        router?.routeToAddContact()
    }
    
    //MARK: - Private methods
    private func fetchContacts() {
        interactor?.fetchContacts()
    }
    
    private func setupTableView() {
        contactsTableView.delegate = self
        contactsTableView.dataSource = self
    }
}

//MARK: - ContactListViewInput
extension ContactListViewController: ContactListViewInput {
    func displayContacts(contacts: [ContactModel]) {
        availableContacts = contacts
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource
extension ContactListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return availableContacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell
        cell.configureCell(contact: availableContacts[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router?.routeToViewContact(contact: availableContacts[indexPath.row])
    }
}
