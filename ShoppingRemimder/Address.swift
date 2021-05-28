//
//  Address.swift
//  ShoppingRemimder
//
//  Created by 河野文香 on 2021/05/27.
//

import Foundation
import RealmSwift

class Address: Object {
    @objc dynamic var brand: String = ""
    @objc dynamic var timeAndDate: String = ""
    @objc dynamic var icon: String = ""
}
