//
//  Customer+CoreDataProperties.swift
//  NorthGeorgiaHonda
//
//  Created by Jan Virtanen on 3/1/18.
//  Copyright © 2018 Jani Virtanen (JJVIRT3136). All rights reserved.
//
//

import Foundation
import CoreData


extension Customer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }


}
