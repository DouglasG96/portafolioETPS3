//
//  Author+CoreDataProperties.swift
//  Ejemplo21752052015
//
//  Created by Douglas on 9/5/20.
//  Copyright © 2020 Douglas. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Author {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Author> {
        return NSFetchRequest<Author>(entityName: "Author");
    }

    @NSManaged public var firstName: String?
    @NSManaged public var secondName: String?
    @NSManaged public var relationship: Book?

}
