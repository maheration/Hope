//
//  Donor+CoreDataProperties.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-07-23.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Donor {

    @NSManaged var location: String?
    @NSManaged var bloodType: String?
    @NSManaged var weight: String?
    @NSManaged var height: String?
    @NSManaged var deathCause: String?
    @NSManaged var radioImaging: String?
    @NSManaged var nephroToxicDrugs: String?
    @NSManaged var persistHypoBp: String?
    @NSManaged var urineOutPut: String?
    @NSManaged var transfusion: String?
    @NSManaged var dic: String?
    @NSManaged var downTime: String?
    @NSManaged var feverOrSeriousDis: String?
    @NSManaged var preHtn: String?
    @NSManaged var preDM: String?
    @NSManaged var preSmoking: String?
    @NSManaged var preIVDU: String?
    @NSManaged var preMalignancy: String?
    @NSManaged var preMeds: String?
    @NSManaged var preFamilyhx: String?
    @NSManaged var preSocialhx: String?
    @NSManaged var crtPre: String?
    @NSManaged var crtPeak: String?
    @NSManaged var crtAdmition: String?
    @NSManaged var crtDeath: String?
    @NSManaged var hivSerology: String?
    @NSManaged var hbvSerology: String?
    @NSManaged var hcvSerology: String?
    @NSManaged var cmvSerology: String?
    @NSManaged var ebvSerology: String?
    @NSManaged var vzvSerology: String?
    @NSManaged var hsvSerology: String?
    @NSManaged var syphlisSerology: String?
    @NSManaged var urineAnalysis: String?
    @NSManaged var biopsy: String?
    @NSManaged var retrievalTime: String?
    @NSManaged var perfusionType: String?
    @NSManaged var lungOrgan: NSNumber?
    @NSManaged var heartOrgan: NSNumber?
    @NSManaged var liverOrgan: NSNumber?
    @NSManaged var pancreaseOrgan: NSNumber?

}
