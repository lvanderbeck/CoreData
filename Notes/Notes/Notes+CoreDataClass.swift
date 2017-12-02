//
//  Notes+CoreDataClass.swift
//  Notes
//
//  Created by Logan VanDerBeck on 11/30/17.
//  Copyright © 2017 Logan VanDerBeck. All rights reserved.
//
//

import CoreData
import UIKit

@objc(Notes)
public class Notes: NSManagedObject {

    convenience init?(rawNote: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext
            else{
                return nil
        
    }
        self.init(entity: Notes.entity(), insertInto: managedContext)
        self.rawNote = rawNote
        
}
}
