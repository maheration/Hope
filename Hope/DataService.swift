//
//  DataService.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-08-05.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DataService {
    
    static let ds = DataService()
    
    var donors = [Donor]()
    
    
    func fetchDonors() {
        
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "Donor")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            donors = results as! [Donor]
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
}
