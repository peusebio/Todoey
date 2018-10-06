//
//  Data.swift
//  Todoey
//
//  Created by Pedro Eusébio on 24/02/18.
//  Copyright © 2018 Pedro Eusébio. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object{
    @objc dynamic var name : String = ""
    @objc dynamic var age: Int = 0
}
