//
//  ContactTableViewCell.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/6/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import UIKit

final class ContactTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak private var nameLabel: UILabel!
    
    //MARK: - Life cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //MARK: - Public methods
    func configureCell(contact: ContactModel) {
        nameLabel.text = contact.getFullName()
    }

}
