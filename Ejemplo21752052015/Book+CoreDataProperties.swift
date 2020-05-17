//
//  Book+CoreDataProperties.swift
//  Ejemplo21752052015
//
//  Created by Douglas on 9/5/20.
//  Copyright © 2020 Douglas. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book");
    }

    @NSManaged public var price: NSDecimalNumber?
    @NSManaged public var title: String?
    @NSManaged public var yearPublished: NSDate?

}
