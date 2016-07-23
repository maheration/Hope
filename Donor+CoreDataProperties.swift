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

    @NSManaged var biopsy: String?
    @NSManaged var bloodType: String?
    @NSManaged var cmvSerology: String?
    @NSManaged var crtAdmition: String?
    @NSManaged var crtDeath: String?
    @NSManaged var crtPeak: String?
    @NSManaged var crtPre: String?
    @NSManaged var deathCause: String?
    @NSManaged var dic: String?
    @NSManaged var downTime: String?
    @NSManaged var ebvSerology: String?
    @NSManaged var feverOrSeriousDis: String?
    @NSManaged var hbvSerology: String?
    @NSManaged var hcvSerology: String?
    @NSManaged var heartOrgan: NSNumber?
    @NSManaged var height: String?
    @NSManaged var hivSerology: String?
    @NSManaged var hsvSerology: String?
    @NSManaged var liverOrgan: NSNumber?
    @NSManaged var location: String?
    @NSManaged var lungOrgan: NSNumber?
    @NSManaged var nephroToxicDrugs: String?
    @NSManaged var pancreaseOrgan: NSNumber?
    @NSManaged var perfusionType: String?
    @NSManaged var persistHypoBp: String?
    @NSManaged var preDM: String?
    @NSManaged var preFamilyhx: String?
    @NSManaged var preHtn: String?
    @NSManaged var preIVDU: String?
    @NSManaged var preMalignancy: String?
    @NSManaged var preMeds: String?
    @NSManaged var preSmoking: String?
    @NSManaged var preSocialhx: String?
    @NSManaged var radioImaging: String?
    @NSManaged var retrievalTime: String?
    @NSManaged var syphlisSerology: String?
    @NSManaged var transfusion: String?
    @NSManaged var urineAnalysis: String?
    @NSManaged var urineOutPut: String?
    @NSManaged var vzvSerology: String?
    @NSManaged var weight: String?

}
