//
//  EditTableVC.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-08-04.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//

import UIKit
import CoreData

class EditTableVC: UITableViewController {
    
    var pressedDonor: Donor!

    @IBOutlet weak var location: MaterialTxtFld!
    
    @IBOutlet weak var bloodType: MaterialTxtFld!
    
    @IBOutlet weak var wt: MaterialTxtFld!
    @IBOutlet weak var ht: MaterialTxtFld!
    @IBOutlet weak var gender: MaterialTxtFld!
    @IBOutlet weak var age: MaterialTxtFld!
    @IBOutlet weak var dcc: MaterialTxtFld!
    @IBOutlet weak var ethnTxtFld: MaterialTxtFld!
    
    @IBOutlet weak var causeOfDeathTxtFld: MaterialTxtFld!
    @IBOutlet weak var imagingTxtFld: MaterialTxtFld!
    @IBOutlet weak var nephrotoxicTxtFld: MaterialTxtFld!
    @IBOutlet weak var hypoBpTxtFld: MaterialTxtFld!
    @IBOutlet weak var uopTxtFld: MaterialTxtFld!
    @IBOutlet weak var pressorsTxtFld: MaterialTxtFld!
    @IBOutlet weak var transfusionTxtFld: MaterialTxtFld!
    @IBOutlet weak var dicTxtFld: MaterialTxtFld!
    @IBOutlet weak var downTxtFld: MaterialTxtFld!
    @IBOutlet weak var feverTxtFld: MaterialTxtFld!
    
    @IBOutlet weak var htnTxtFld: MaterialTxtFld!
    @IBOutlet weak var smokingTxtFld: MaterialTxtFld!
    @IBOutlet weak var dmTxtFld: MaterialTxtFld!
    @IBOutlet weak var ivduTxtFld: MaterialTxtFld!
    @IBOutlet weak var malignancyTxtFld: MaterialTxtFld!
    @IBOutlet weak var medsTxtFld: MaterialTxtFld!
    @IBOutlet weak var sexualTxtFld: MaterialTxtFld!
    @IBOutlet weak var incarcerationTxtFld: MaterialTxtFld!
    @IBOutlet weak var familyTxtFld: MaterialTxtFld!
    @IBOutlet weak var socialHxTxtFld: MaterialTxtFld!
    
    @IBOutlet weak var crtPre: MaterialTxtFld!
    @IBOutlet weak var crtPeak: MaterialTxtFld!
    @IBOutlet weak var crtAdm: MaterialTxtFld!
    @IBOutlet weak var crtDeath: MaterialTxtFld!
    @IBOutlet weak var hivTxtFld: MaterialTxtFld!
    @IBOutlet weak var hbvTxtFld: MaterialTxtFld!
    @IBOutlet weak var hcvTxtFld: MaterialTxtFld!
    @IBOutlet weak var cmvTxtFld: MaterialTxtFld!
    @IBOutlet weak var ebvTxtFld: MaterialTxtFld!
    @IBOutlet weak var vzvTxtFld: MaterialTxtFld!
    @IBOutlet weak var hsvTxtFld: MaterialTxtFld!
    @IBOutlet weak var syphlisTxtFld: MaterialTxtFld!
    @IBOutlet weak var uaTxtFld: MaterialTxtFld!
    @IBOutlet weak var bxTxtFld: MaterialTxtFld!
    
    @IBOutlet weak var heartOrgan: UISwitch!
    @IBOutlet weak var lungOrgan: UISwitch!
    @IBOutlet weak var liverOrgan: UISwitch!
    @IBOutlet weak var pancrOrgan: UISwitch!
    
    @IBOutlet weak var retrievalTime: MaterialTxtFld!
    @IBOutlet weak var perfusionType: MaterialTxtFld!
    @IBOutlet weak var generalComment: MaterialTxtFld!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateFlds()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
    func updateFlds() {
        
        if pressedDonor.location != nil {
            location.text = pressedDonor.location
        } else {
            location.text = ""
        }
        
        if pressedDonor.bloodType != nil {
            bloodType.text = pressedDonor.bloodType
        } else {
            bloodType.text = ""
        }
        
        if pressedDonor.height != nil {
            ht.text = pressedDonor.height
        } else {
            ht.text = ""
        }
        
        if pressedDonor.weight != nil {
            wt.text = pressedDonor.weight
        } else {
            wt.text = ""
        }
        
        if pressedDonor.age != nil {
            age.text = pressedDonor.age
        } else {
            age.text = ""
        }
        
        if pressedDonor.gender != nil {
            gender.text = pressedDonor.gender
        } else {
            gender.text = ""
        }
        
        if pressedDonor.ethnicity != nil {
            ethnTxtFld.text = pressedDonor.ethnicity
        } else {
            ethnTxtFld.text = ""
        }
        
        if pressedDonor.dcd != nil {
            dcc.text = pressedDonor.dcd
        } else {
            dcc.text = ""
        }
        
        if pressedDonor.deathCause != nil {
            causeOfDeathTxtFld.text = pressedDonor.deathCause
        } else {
            causeOfDeathTxtFld.text = ""
        }
        
        if pressedDonor.nephroToxicDrugs != nil {
            nephrotoxicTxtFld.text = pressedDonor.nephroToxicDrugs
        } else {
            nephrotoxicTxtFld.text = ""
        }
        
        if pressedDonor.persistHypoBp != nil {
            hypoBpTxtFld.text = pressedDonor.persistHypoBp
        } else {
            hypoBpTxtFld.text = ""
        }
        
        if pressedDonor.urineOutPut != nil {
            uopTxtFld.text = pressedDonor.urineOutPut
        } else {
            uopTxtFld.text = ""
        }
        
        if pressedDonor.pressors != nil {
            pressorsTxtFld.text = pressedDonor.pressors
        } else {
            pressorsTxtFld.text = ""
        }
        
        if pressedDonor.transfusion != nil {
            transfusionTxtFld.text = pressedDonor.transfusion
        } else {
            transfusionTxtFld.text = ""
        }
        
        if pressedDonor.dic != nil {
            dicTxtFld.text = pressedDonor.dic
        } else {
            dicTxtFld.text = ""
        }
        
        if pressedDonor.downTime != nil {
            downTxtFld.text = pressedDonor.downTime
        } else {
            downTxtFld.text = ""
        }
        
        if pressedDonor.feverOrSeriousDis != nil {
            feverTxtFld.text = pressedDonor.feverOrSeriousDis
        } else {
            feverTxtFld.text = ""
        }
        
        if pressedDonor.radioImaging != nil {
            imagingTxtFld.text = pressedDonor.radioImaging
        } else {
            imagingTxtFld.text = ""
        }
        
        if pressedDonor.preHtn != nil {
            htnTxtFld.text = pressedDonor.preHtn
        } else {
            htnTxtFld.text = ""
        }
        
        if pressedDonor.preDM != nil {
            dmTxtFld.text = pressedDonor.preDM
        } else {
            dmTxtFld.text = ""
        }
        
        if pressedDonor.preSmoking != nil {
            smokingTxtFld.text = pressedDonor.preSmoking
        } else {
            smokingTxtFld.text = ""
        }
        
        if pressedDonor.preIVDU != nil {
            ivduTxtFld.text = pressedDonor.preIVDU
        } else {
            ivduTxtFld.text = ""
        }
        
        if pressedDonor.preMalignancy != nil {
            malignancyTxtFld.text = pressedDonor.preMalignancy
        } else {
            malignancyTxtFld.text = ""
        }
        
        if pressedDonor.preMeds != nil {
            medsTxtFld.text = pressedDonor.preMeds
        } else {
            medsTxtFld.text = ""
        }
        
        if pressedDonor.sexualHx != nil {
            sexualTxtFld.text = pressedDonor.sexualHx
        } else {
            sexualTxtFld.text = ""
        }
        
        if pressedDonor.incarcerationHx != nil {
            incarcerationTxtFld.text = pressedDonor.incarcerationHx
        } else {
            incarcerationTxtFld.text = ""
        }
        
        if pressedDonor.preSocialhx != nil {
            socialHxTxtFld.text = pressedDonor.preSocialhx
        } else {
            socialHxTxtFld.text = ""
        }
        
        if pressedDonor.preFamilyhx != nil {
            familyTxtFld.text = pressedDonor.preFamilyhx
        } else {
            familyTxtFld.text = ""
        }
        
        
        if pressedDonor.crtPre != nil {
            crtPre.text = pressedDonor.crtPre
        } else {
            crtPre.text = ""
        }
        
        if pressedDonor.crtPeak != nil {
            crtPeak.text = pressedDonor.crtPeak
        } else {
            crtPeak.text = ""
        }
        
        if pressedDonor.crtAdmition != nil {
            crtAdm.text = pressedDonor.crtAdmition
        } else {
            crtAdm.text = ""
        }
        
        if pressedDonor.crtDeath != nil {
            crtDeath.text = pressedDonor.crtDeath
        } else {
            crtDeath.text = ""
        }
        
        if pressedDonor.hivSerology != nil {
            hivTxtFld.text = pressedDonor.hivSerology
        } else {
            hivTxtFld.text = ""
        }
        
        if pressedDonor.hbvSerology != nil {
            hbvTxtFld.text = pressedDonor.hbvSerology
        } else {
            hbvTxtFld.text = ""
        }
        
        if pressedDonor.hcvSerology != nil {
            hcvTxtFld.text = pressedDonor.hcvSerology
        } else {
            hcvTxtFld.text = ""
        }
        
        if pressedDonor.cmvSerology != nil {
            cmvTxtFld.text = pressedDonor.cmvSerology
        } else {
            cmvTxtFld.text = ""
        }
        
        if pressedDonor.ebvSerology != nil {
            ebvTxtFld.text = pressedDonor.ebvSerology
        } else {
            ebvTxtFld.text = ""
        }
        
        if pressedDonor.vzvSerology != nil {
            vzvTxtFld.text = pressedDonor.vzvSerology
        } else {
            vzvTxtFld.text = ""
        }
        
        if pressedDonor.hsvSerology != nil {
            hsvTxtFld.text = pressedDonor.hsvSerology
        } else {
            hsvTxtFld.text = ""
        }
        
        if pressedDonor.syphlisSerology != nil {
            syphlisTxtFld.text = pressedDonor.syphlisSerology
        } else {
            syphlisTxtFld.text = ""
        }
        
        if pressedDonor.urineAnalysis != nil {
            uaTxtFld.text = pressedDonor.urineAnalysis
        } else {
            uaTxtFld.text = ""
        }
        
        if pressedDonor.biopsy != nil {
            bxTxtFld.text = pressedDonor.biopsy
        } else {
            bxTxtFld.text = ""
        }
        
        if pressedDonor.heartOrgan == 0 {
            heartOrgan.setOn(false, animated: true)
        } else {
            heartOrgan.setOn(true, animated: true)
        }
        
        if pressedDonor.lungOrgan == 0 {
            lungOrgan.setOn(false, animated: true)
        } else {
            lungOrgan.setOn(true, animated: true)
        }
        
        if pressedDonor.liverOrgan == 0 {
            liverOrgan.setOn(false, animated: true)
        } else {
            liverOrgan.setOn(true, animated: true)
        }
        
        if pressedDonor.pancreaseOrgan == 0 {
            pancrOrgan.setOn(false, animated: true)
        } else {
            pancrOrgan.setOn(true, animated: true)
        }
        
        
        if pressedDonor.retrievalTime != nil {
            retrievalTime.text = pressedDonor.retrievalTime
        } else {
            retrievalTime.text = ""
        }
        
        if pressedDonor.perfusionType != nil {
            perfusionType.text = pressedDonor.perfusionType
        } else {
            perfusionType.text = ""
        }
        
        if pressedDonor.generalComment != nil {
            generalComment.text = pressedDonor.generalComment
        } else {
            generalComment.text = ""
        }
    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func updateDonorObject() {
        
        if let locations = location.text where locations != "" {
            pressedDonor.location = locations
        } else {
            pressedDonor.location = nil
        }
        
        if let type = bloodType.text where type != "" {
            pressedDonor.bloodType = type
        } else {
            pressedDonor.bloodType = nil
        }
        
        if let ht = ht.text where ht != "" {
            pressedDonor.height = ht
        } else {
            pressedDonor.height = nil
        }
        
        if let wt = wt.text where wt != "" {
            pressedDonor.weight = wt
        } else {
            pressedDonor.weight = nil
        }
        
        if let newAge = age.text where newAge != "" {
            pressedDonor.age = newAge
        } else {
            pressedDonor.age = nil
        }
        
        
        if let genders = gender.text where genders != "" {
            pressedDonor.gender = genders
        } else {
            pressedDonor.gender = nil
        }
        
        if let ethn = ethnTxtFld.text where ethn != "" {
            pressedDonor.ethnicity = ethn
        } else {
            pressedDonor.ethnicity = nil
        }
        
        if let death = causeOfDeathTxtFld.text where death != "" {
            pressedDonor.deathCause = death
        } else {
            pressedDonor.deathCause = nil
        }
        
        if let dcd = dcc.text where dcd != "" {
            pressedDonor.dcd = dcd
        } else {
            pressedDonor.dcd = nil
        }
        
        if let img = imagingTxtFld.text where img != "" {
            pressedDonor.radioImaging = img
        } else {
            pressedDonor.radioImaging = nil
        }
        
        if let toxic = nephrotoxicTxtFld.text where toxic != "" {
            pressedDonor.nephroToxicDrugs = toxic
        } else {
            pressedDonor.nephroToxicDrugs = nil
        }
        
        if let bp = hypoBpTxtFld.text where bp != "" {
            pressedDonor.persistHypoBp = bp
        } else {
            pressedDonor.persistHypoBp = nil
        }
        
        if let uop = uopTxtFld.text where uop != "" {
            pressedDonor.urineOutPut = uop
        } else {
            pressedDonor.urineOutPut = nil
        }
        
        if let press = pressorsTxtFld.text where press != "" {
            pressedDonor.pressors = press
        } else {
            pressedDonor.pressors = nil
        }
        
        if let trans = transfusionTxtFld.text where trans != "" {
            pressedDonor.transfusion = trans
        } else {
            pressedDonor.transfusion = nil
        }
        
        if let dic = dicTxtFld.text where dic != "" {
            pressedDonor.dic = dic
        } else {
            pressedDonor.dic = nil
        }
        
        if let down = downTxtFld.text where down != "" {
            pressedDonor.downTime = down
        } else {
            pressedDonor.downTime = nil
        }
        
        if let fever = feverTxtFld.text where fever != "" {
            pressedDonor.feverOrSeriousDis = fever
        } else {
            pressedDonor.feverOrSeriousDis = nil
        }
        
        if let htn = htnTxtFld.text where htn != "" {
            pressedDonor.preHtn = htn
        } else {
            pressedDonor.preHtn = nil
        }
        
        if let dm = dmTxtFld.text where dm != "" {
            pressedDonor.preDM = dm
        } else {
            pressedDonor.preDM = nil
        }
        
        if let smoking = smokingTxtFld.text where smoking != "" {
            pressedDonor.preSmoking = smoking
        } else {
            pressedDonor.preSmoking = nil
        }
        
        if let ivdu = ivduTxtFld.text where ivdu != "" {
            pressedDonor.preIVDU = ivdu
        } else {
            pressedDonor.preIVDU = nil
        }
        
        if let cancer = malignancyTxtFld.text where cancer != "" {
            pressedDonor.preMalignancy = cancer
        } else {
            pressedDonor.preMalignancy = nil
        }
        
        if let meds = medsTxtFld.text where meds != "" {
            pressedDonor.preMeds = meds
        } else {
             pressedDonor.preMeds = nil
        }
        
        if let sex = sexualTxtFld.text where sex != "" {
            pressedDonor.sexualHx = sex
        } else {
            pressedDonor.sexualHx = nil
        }
        
        if let incarcer = incarcerationTxtFld.text where incarcer != "" {
            pressedDonor.incarcerationHx = incarcer
        } else {
            pressedDonor.incarcerationHx = nil
        }
        
        if let social = socialHxTxtFld.text where social != "" {
            pressedDonor.preSocialhx = social
        } else {
            pressedDonor.preSocialhx = nil
        }
        
        if let family = familyTxtFld.text where family != "" {
            pressedDonor.preFamilyhx = family
        } else {
            pressedDonor.preFamilyhx = nil
        }
        
        if let preCrt = crtPre.text where preCrt != "" {
            pressedDonor.crtPre = preCrt
        } else {
            pressedDonor.crtPre = nil
        }
        
        if let peak = crtPeak.text where peak != "" {
            pressedDonor.crtPeak = peak
        } else {
            pressedDonor.crtPeak = nil
        }
        
        if let adm = crtAdm.text where adm != "" {
            pressedDonor.crtAdmition = adm
        } else {
            pressedDonor.crtAdmition = nil
        }
        
        if let deathCrt = crtDeath.text where deathCrt != "" {
            pressedDonor.crtDeath = deathCrt
        } else {
            pressedDonor.crtDeath = nil
        }
        
        if let hiv = hivTxtFld.text where hiv != "" {
            pressedDonor.hivSerology = hiv
        } else {
            pressedDonor.hivSerology = nil
        }
        
        if let hbv = hbvTxtFld.text where hbv != "" {
            pressedDonor.hbvSerology = hbv
        } else {
            pressedDonor.hbvSerology = nil
        }
        
        if let hcv = hcvTxtFld.text where hcv != "" {
            pressedDonor.hcvSerology = hcv
        } else {
            pressedDonor.hcvSerology = nil
        }
        
        if let cmv = cmvTxtFld.text where cmv != "" {
            pressedDonor.cmvSerology = cmv
        } else {
            pressedDonor.cmvSerology = nil
        }
        
        if let ebv = ebvTxtFld.text where ebv != "" {
            pressedDonor.ebvSerology = ebv
        } else {
            pressedDonor.ebvSerology = nil
        }
        
        if let vzv = vzvTxtFld.text where vzv != "" {
            pressedDonor.vzvSerology = vzv
        } else {
            pressedDonor.vzvSerology = nil
        }
        
        if let hsv = hsvTxtFld.text where hsv != "" {
            pressedDonor.hsvSerology = hsv
        } else {
            pressedDonor.hsvSerology = nil
        }
        
        if let syph = syphlisTxtFld.text where syph != "" {
            pressedDonor.syphlisSerology = syph
        } else {
            pressedDonor.syphlisSerology = nil
        }
        
        if let ua = uaTxtFld.text where ua != "" {
            pressedDonor.urineAnalysis = ua
        } else {
            pressedDonor.urineAnalysis = nil
        }
        
        if let bx = bxTxtFld.text where bx != "" {
            pressedDonor.biopsy = bx
        } else {
            pressedDonor.biopsy = nil
        }
        
        
        if heartOrgan.on {
            pressedDonor.heartOrgan = true
        } else {
            pressedDonor.heartOrgan = false
        }
        
        if lungOrgan.on {
            pressedDonor.lungOrgan = true
        } else {
            pressedDonor.lungOrgan = false
        }
        
        if liverOrgan.on {
            pressedDonor.liverOrgan = true
        } else {
            pressedDonor.liverOrgan = false
        }
        
        if pancrOrgan.on {
            pressedDonor.pancreaseOrgan = true
        } else {
            pressedDonor.pancreaseOrgan = false
        }
        
        
        
        if let time = retrievalTime.text where time != "" {
            pressedDonor.retrievalTime = time
        } else {
            pressedDonor.retrievalTime = nil
        }
        
        if let perfusion = perfusionType.text where perfusion != "" {
            pressedDonor.perfusionType = perfusion
        } else {
            pressedDonor.perfusionType = nil
        }
        
        if let comment = generalComment.text where comment != "" {
            pressedDonor.generalComment = comment
        } else {
            pressedDonor.generalComment = nil
        }
        
        
    }
    
    @IBAction func saveBtnPressed() {
        updateDonorObject()
        
        do {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            try context.save()
            print("yayy")
        } catch {
            print("failed")
        }
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    
}
