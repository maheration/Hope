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
    
    
    var dateFormatter : NSDateFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(AddDonorVC.dismissKeyBoard))
        view.addGestureRecognizer(tap)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func saveBtnPressed(sender: AnyObject) {
        
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        
        let entity = NSEntityDescription.entityForName("Donor", inManagedObjectContext: context)
        
        let donor = Donor(entity: entity!, insertIntoManagedObjectContext: context)
        
        dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .MediumStyle
        donor.date = dateFormatter.stringFromDate(NSDate())
        
        
        if let location = locationTxtFld.text where location != "" {
            donor.location = location
        }
        
        if let bloodType = bloodTypeTxtFld.text where bloodType != "" {
            donor.bloodType = bloodType
        }
        
        if let wt = wtTxtFld.text where wt != "" {
            donor.weight = wt
        }
        
        if let ht = htTxtFld.text where ht != "" {
            donor.height = ht
        }
        
        if let deathCause = deathCauseTxtFld.text where deathCause != "" {
            donor.deathCause = deathCause
        }
        
        if let radio = imagingTxtFld.text where radio != "" {
            donor.radioImaging = radio
        }
        
        if let nephToxicDrug = nephrToxicTxtFld.text where nephToxicDrug != "" {
            donor.nephroToxicDrugs = nephToxicDrug
        }
        
        if let persisHypoBP = persistHypoBPTxtFld.text where persisHypoBP != "" {
            donor.persistHypoBp = persisHypoBP
        }
        
        if let urineOP = urineOutTxtFld.text where urineOP != "" {
            donor.urineOutPut = urineOP
        }
        
        if let transfusion = transfusionTxtFld.text where transfusion != "" {
            donor.transfusion = transfusion
        }
        
        if let dic = dicTxtFld.text where dic != "" {
            donor.dic = dic
        }
        
        if let downTime = downTimeTxtFld.text where downTime != "" {
            donor.downTime = downTime
        }
        
        if let fever = feverInfecTxtFld.text where fever != "" {
            donor.feverOrSeriousDis = fever
        }
        
        if let preHTN = preHtnTxtFld.text where preHTN != "" {
            donor.preHtn = preHTN
        }
        
        if let preDM = preDmTxtFld.text where preDM != "" {
            donor.preDM = preDM
        }
        
        if let preSmoking = preSmokingTxtFld.text where preSmoking != "" {
            donor.preSmoking = preSmoking
        }
        
        if let preIVDU = preIVDUTxtFld.text where preIVDU != "" {
            donor.preIVDU = preIVDU
        }
        
        if let preCancer = preMalignancyTxtFld.text where preCancer != "" {
            donor.preMalignancy = preCancer
        }
        
        if let preMed = preMedsTxtFld.text where preMed != "" {
            donor.preMeds = preMed
        }
        
        if let preFamily = preFamilyHxTxtFld.text where preFamily != "" {
            donor.preFamilyhx = preFamily
        }
        
        if let preSocial = preSocialHxTxtFld.text where preSocial != "" {
            donor.preSocialhx = preSocial
        }
        
        if let crtPre = crtPreTxtFld.text where crtPre != "" {
            donor.crtPre = crtPre
        }
        
        if let crtPeak = peakCrtTxtFld.text where crtPeak != "" {
            donor.crtPeak = crtPeak
        }
        
        if let crtAdm = admCrtTxtFld.text where crtAdm != "" {
            donor.crtAdmition = crtAdm
        }
        
        if let crtDeath = deathCrtTxtFld.text where crtDeath != "" {
            donor.crtDeath = crtDeath
        }
        
        if let hiv = hivTxtFld.text where hiv != "" {
            donor.hivSerology = hiv
        }
        
        if let hbv = hbvTxtFld.text where hbv != "" {
            donor.hbvSerology = hbv
        }
        
        if let hcv = hcvTxtFld.text where hcv != "" {
            donor.hcvSerology = hcv
        }
        
        if let ebv = ebvTxtFld.text where ebv != "" {
            donor.ebvSerology = ebv
        }
        
        if let cmv = cmvTxtFld.text where cmv != "" {
            donor.cmvSerology = cmv
        }
        
        if let vzv = vzvTxtFld.text where vzv != "" {
            donor.vzvSerology = vzv
        }
        
        if let hsv = hsvTxtFld.text where hsv != "" {
            donor.hsvSerology = hsv
        }
        
        if let syphlis = syphlisTxtFld.text where syphlis != "" {
            donor.syphlisSerology = syphlis
        }
        
        if let uA = urineAnaylysisTxtFld.text where uA != "" {
            donor.urineAnalysis = uA
        }
        
        if let bx = biopsyTxtFld.text where bx != "" {
            donor.biopsy = bx
        }
        
        if let retrievalTime = estTimeRetrievTxtFld.text where retrievalTime != "" {
            donor.retrievalTime = retrievalTime
        }
        
        if let perfType = typeOfPerfusionTxtFld.text where perfType != "" {
            donor.perfusionType = perfType
        }
        
        
        if heartSwitch.on {
            donor.heartOrgan = true
        } else {
            donor.heartOrgan = false
        }
        
        if lungSwitch.on {
            donor.lungOrgan = true
        } else {
            donor.lungOrgan = false
        }
        
        if liverSwitch.on {
            donor.liverOrgan = true
        } else {
            donor.liverOrgan = false
        }
        
        if pancrSwitch.on {
            donor.pancreaseOrgan = true
        } else {
            donor.pancreaseOrgan = false
        }
        
        context.insertObject(donor)
        
        do {
            try context.save()
        } catch {
            print("failed save")
        }
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func dismissKeyBoard() {
        view.endEditing(true)
        
    }
}
