//
//  Category.swift
//  Todoey
//
//  Created by Pedro Eusébio on 25/02/18.
//  Copyright © 2018 Pedro Eusébio. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
