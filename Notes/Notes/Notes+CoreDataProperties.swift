//
//  Notes+CoreDataProperties.swift
//  Notes
//
//  Created by Logan VanDerBeck on 11/30/17.
//  Copyright © 2017 Logan VanDerBeck. All rights reserved.
//
//

import Foundation
import CoreData


extension Notes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Notes> {
        return NSFetchRequest<Notes>(entityName: "Notes")
    }

    @NSManaged public var rawNote: String?

}
