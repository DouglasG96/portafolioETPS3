//
//  Libros+CoreDataProperties.swift
//  Libros1752052015
//
//  Created by Douglas on 16/5/20.
//  Copyright © 2020 Douglas. All rights reserved.
//

import Foundation
import CoreData


extension Libros {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Libros> {
        return NSFetchRequest<Libros>(entityName: "Libros");
    }

    @NSManaged public var descripcion: String?
    @NSManaged public var titulo: String?
    @NSManaged public var autor: String?

}
