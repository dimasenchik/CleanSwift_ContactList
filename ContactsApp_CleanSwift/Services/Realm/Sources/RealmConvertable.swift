//
//  RealmConvertable.swift
//  ContactsApp_CleanSwift
//
//  Created by Dima Senchik on 9/5/19.
//  Copyright © 2019 Dima Senchik. All rights reserved.
//

import Foundation
import RealmSwift

protocol RealmConvertable {
    
    associatedtype RealmType: Object
    
    func mapToRealmObject() -> RealmType
    static func mapFromRealmObject(_ object: RealmType) -> Self
}
