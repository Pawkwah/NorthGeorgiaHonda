//
//  Car+CoreDataProperties.swift
//  NorthGeorgiaHonda
//
//  Created by Jan Virtanen on 3/1/18.
//  Copyright © 2018 Jani Virtanen (JJVIRT3136). All rights reserved.
//
//

import Foundation
import CoreData


extension Car {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Car> {
        return NSFetchRequest<Car>(entityName: "Car")
    }

    @NSManaged public var make: String?
    @NSManaged public var model: String?
    @NSManaged public var year: Int16
    @NSManaged public var color: String?
    @NSManaged public var mileage: Int16

}
