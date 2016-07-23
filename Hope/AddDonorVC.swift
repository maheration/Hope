//
//  AddDonorVC.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-07-22.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//

import UIKit
import CoreData

class AddDonorVC: UITableViewController {
    @IBOutlet weak var locationTxtFld: MaterialTxtFld!
    @IBOutlet weak var bloodTypeTxtFld: MaterialTxtFld!
    @IBOutlet weak var wtTxtFld: MaterialTxtFld!
    @IBOutlet weak var htTxtFld: MaterialTxtFld!
    @IBOutlet weak var deathCauseTxtFld: MaterialTxtFld!
    @IBOutlet weak var imagingTxtFld: MaterialTxtFld!
    @IBOutlet weak var nephrToxicTxtFld: MaterialTxtFld!
    @IBOutlet weak var persistHypoBPTxtFld: MaterialTxtFld!
    @IBOutlet weak var urineOutTxtFld: MaterialTxtFld!
    @IBOutlet weak var transfusionTxtFld: MaterialTxtFld!
    @IBOutlet weak var dicTxtFld: MaterialTxtFld!
    
    @IBOutlet weak var downTimeTxtFld: MaterialTxtFld!
    @IBOutlet weak var feverInfecTxtFld: MaterialTxtFld!
    
    @IBOutlet weak var preHtnTxtFld: MaterialTxtFld!
    @IBOutlet weak var preDmTxtFld: MaterialTxtFld!
    @IBOutlet weak var preSmokingTxtFld: MaterialTxtFld!
    @IBOutlet weak var preIVDUTxtFld: MaterialTxtFld!
    @IBOutlet weak var preMalignancyTxtFld: MaterialTxtFld!
    @IBOutlet weak var preMedsTxtFld: MaterialTxtFld!
    @IBOutlet weak var preFamilyHxTxtFld: MaterialTxtFld!
    @IBOutlet weak var preSocialHxTxtFld: MaterialTxtFld!
    
    @IBOutlet weak var crtPreTxtFld: MaterialTxtFld!
    @IBOutlet weak var peakCrtTxtFld: MaterialTxtFld!
    @IBOutlet weak var admCrtTxtFld: MaterialTxtFld!
    @IBOutlet weak var deathCrtTxtFld: MaterialTxtFld!

    @IBOutlet weak var hivTxtFld: MaterialTxtFld!
    @IBOutlet weak var hbvTxtFld: MaterialTxtFld!
    
    @IBOutlet weak var hcvTxtFld: MaterialTxtFld!
    @IBOutlet weak var cmvTxtFld: MaterialTxtFld!
    @IBOutlet weak var ebvTxtFld: MaterialTxtFld!
    @IBOutlet weak var vzvTxtFld: MaterialTxtFld!
    @IBOutlet weak var hsvTxtFld: MaterialTxtFld!
    @IBOutlet weak var syphlisTxtFld: MaterialTxtFld!
    @IBOutlet weak var urineAnaylysisTxtFld: MaterialTxtFld!
    @IBOutlet weak var biopsyTxtFld: MaterialTxtFld!
    
    @IBOutlet weak var heartSwitch: UISwitch!
    @IBOutlet weak var lungSwitch: UISwitch!
    @IBOutlet weak var liverSwitch: UISwitch!
    @IBOutlet weak var pancrSwitch: UISwitch!
    
    @IBOutlet weak var estTimeRetrievTxtFld: MaterialTxtFld!
    @IBOutlet weak var typeOfPerfusionTxtFld: MaterialTxtFld!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func saveBtnPressed(sender: AnyObject) {
        
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        
        let entity = NSEntityDescription.entityForName("Donor", inManagedObjectContext: context)
        
        let donor = Donor(entity: entity!, insertIntoManagedObjectContext: context)
        
    }
}
