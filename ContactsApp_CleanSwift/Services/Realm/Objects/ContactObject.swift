//
//  ContactObject.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers final class ContactObject: Object {
    dynamic var id: Int = 0
    dynamic var firstName: String = ""
    dynamic var lastName: String = ""
    dynamic var phone: String = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
