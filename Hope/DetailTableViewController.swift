//
//  DetailTableViewController.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-07-26.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//

import UIKit
import CoreData

class DetailTableViewController: UITableViewController {
    
    var donorPressed : Donor!
    
    var noEntryTxt = " --- "
    
    @IBOutlet weak var locationLbl : UILabel!
    
    @IBOutlet weak var htLbl: UILabel!
    
    @IBOutlet weak var aboLbl: UILabel!
    @IBOutlet weak var wtLbl: UILabel!
    
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var ethnLbl: UILabel!
    
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var causeOfDeathLbl: UILabel!
    @IBOutlet weak var imgingLbl: UILabel!
    @IBOutlet weak var nephrotoxicLbl: UILabel!
    @IBOutlet weak var seriousInfecLbl: UILabel!
    @IBOutlet weak var uopLbl: UILabel!
    @IBOutlet weak var pressorsLbl: UILabel!
    @IBOutlet weak var transfusionLbl: UILabel!
    @IBOutlet weak var dicLbl: UILabel!
    @IBOutlet weak var downTimeLbl: UILabel!
    @IBOutlet weak var persisHypoBpLbl: UILabel!
    @IBOutlet weak var medsLbl: UILabel!
    @IBOutlet weak var malignLbl: UILabel!
    @IBOutlet weak var dmLbl: UILabel!
    @IBOutlet weak var ivduLbl: UILabel!
    @IBOutlet weak var htnLbl: UILabel!
    @IBOutlet weak var smokingLbl: UILabel!
    @IBOutlet weak var sexualHxLbl: UILabel!
    @IBOutlet weak var incarcerationLbl: UILabel!
    @IBOutlet weak var otherSocialLbl: UILabel!
    @IBOutlet weak var familyHxLbl: UILabel!
    @IBOutlet weak var crtPreLbl: UILabel!
    @IBOutlet weak var crtPeakLbl: UILabel!
    @IBOutlet weak var crtAdmLbl: UILabel!
    @IBOutlet weak var crtDeathLbl: UILabel!
    @IBOutlet weak var hivLbl: UILabel!
    @IBOutlet weak var hbvLbl: UILabel!
    @IBOutlet weak var hcvLbl: UILabel!
    @IBOutlet weak var cmvLbl: UILabel!
    @IBOutlet weak var ebvLbl: UILabel!
    @IBOutlet weak var vzvLbl: UILabel!
    @IBOutlet weak var hsvLbl: UILabel!
    @IBOutlet weak var syphlisLbl: UILabel!
    @IBOutlet weak var uaLbl: UILabel!
    @IBOutlet weak var bxLbl: UILabel!
    @IBOutlet weak var otherHeartLbl: UILabel!
    @IBOutlet weak var otherLiverLbl: UILabel!
    @IBOutlet weak var otherLungLbl: UILabel!
    @IBOutlet weak var otherPancrLbl: UILabel!
    @IBOutlet weak var retrievalTimeLbl: UILabel!
    @IBOutlet weak var perfusionTypeLbl: UILabel!
    @IBOutlet weak var commentsLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLbls()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        updateLbls()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    
    
    func updateLbls() {
        
        if let location = donorPressed.location {
            
            locationLbl.text = location
        } else {
            locationLbl.text = noEntryTxt
        }
        
        if let age = donorPressed.age {
            ageLbl.text = age
        } else {
            ageLbl.text = noEntryTxt
        }
        
        if let ht = donorPressed.height {
            htLbl.text = ht
        } else {
            htLbl.text = noEntryTxt
        }
        
        if let wt = donorPressed.weight {
            wtLbl.text = wt
        } else {
            wtLbl.text = noEntryTxt
        }
        
        if let abo = donorPressed.bloodType {
            
            aboLbl.text = abo
        } else {
            aboLbl.text = noEntryTxt
        }
        
        if let gender = donorPressed.gender {
            genderLbl.text = gender
        } else {
            genderLbl.text = noEntryTxt
        }
        
        if let ethn = donorPressed.ethnicity {
            ethnLbl.text = ethn
        } else {
            ethnLbl.text = noEntryTxt
        }
        
        if let type = donorPressed.dcd {
            typeLbl.text = type
        } else {
            typeLbl.text = noEntryTxt
        }
        
        if let death = donorPressed.deathCause {
            causeOfDeathLbl.text = death
        } else {
            causeOfDeathLbl.text = noEntryTxt
        }
        
        if let img = donorPressed.radioImaging {
            imgingLbl.text = img
        } else {
            imgingLbl.text = noEntryTxt
        }
        
        if let toxins = donorPressed.nephroToxicDrugs {
            nephrotoxicLbl.text = toxins
        } else {
            nephrotoxicLbl.text = noEntryTxt
        }
        
        if let infx = donorPressed.feverOrSeriousDis {
            seriousInfecLbl.text = infx
        } else {
            seriousInfecLbl.text = noEntryTxt
        }
        
        if let uop = donorPressed.urineOutPut {
            uopLbl.text = uop
        } else {
            uopLbl.text = noEntryTxt
        }
        
        if let pressors = donorPressed.pressors {
            pressorsLbl.text = pressors
        } else {
            pressorsLbl.text = noEntryTxt
        }
        
        if let tranfx = donorPressed.transfusion {
            transfusionLbl.text = tranfx
        } else {
            transfusionLbl.text = noEntryTxt
        }
        
        if let dic = donorPressed.dic {
            dicLbl.text = dic
        } else {
            dicLbl.text = noEntryTxt
        }
        
        if let down = donorPressed.downTime {
            downTimeLbl.text = down
        } else {
            downTimeLbl.text = noEntryTxt
        }
        
        if let hypoBp = donorPressed.persistHypoBp {
            persisHypoBpLbl.text = hypoBp
        } else {
            persisHypoBpLbl.text = noEntryTxt
        }
        
        if let meds = donorPressed.preMeds {
            medsLbl.text = meds
        } else {
            medsLbl.text = noEntryTxt
        }
        
        if let malignancy = donorPressed.preMalignancy {
            malignLbl.text = malignancy
        } else {
            malignLbl.text = noEntryTxt
        }
        
        if let dm = donorPressed.preDM {
            dmLbl.text = dm
        } else {
            dmLbl.text = noEntryTxt
        }
        
        if let ivdu = donorPressed.preIVDU {
            ivduLbl.text = ivdu
        } else {
            ivduLbl.text = noEntryTxt
        }
        
        if let htn = donorPressed.preHtn {
            htnLbl.text = htn
        } else {
            htnLbl.text = noEntryTxt
        }
        
        if let smoking = donorPressed.preSmoking {
            smokingLbl.text = smoking
        } else {
            smokingLbl.text = noEntryTxt
        }
        
        if let sexualhx = donorPressed.sexualHx {
            sexualHxLbl.text = sexualhx
        } else {
            sexualHxLbl.text = noEntryTxt
        }
        
        if let prison = donorPressed.incarcerationHx {
            incarcerationLbl.text = prison
        } else {
            
            incarcerationLbl.text = noEntryTxt
        }
        
        if let otherSocial = donorPressed.preSocialhx {
            otherSocialLbl.text = otherSocial
        } else {
            otherSocialLbl.text = noEntryTxt
        }
        
        if let familyHx = donorPressed.preFamilyhx {
            familyHxLbl.text = familyHx
        } else {
            familyHxLbl.text = noEntryTxt
        }
        
        if let crtPre = donorPressed.crtPre {
            crtPreLbl.text = crtPre
        } else {
            crtPreLbl.text = noEntryTxt
        }
        
        if let crtPeak = donorPressed.crtPeak {
            crtPeakLbl.text = crtPeak
        } else {
            crtPeakLbl.text = noEntryTxt
        }
        
        if let crtAdm = donorPressed.crtAdmition {
            crtAdmLbl.text = crtAdm
        } else {
            crtAdmLbl.text = noEntryTxt
        }
        
        if let crtDeath = donorPressed.crtDeath {
            crtDeathLbl.text = crtDeath
        } else {
            crtDeathLbl.text = noEntryTxt
        }
        
        if let hiv = donorPressed.hivSerology {
            hivLbl.text = hiv
        } else {
            hivLbl.text = noEntryTxt
        }
        
        if let hbv = donorPressed.hbvSerology {
            hbvLbl.text = hbv
        } else {
            hbvLbl.text = noEntryTxt
        }
        
        if let hcv = donorPressed.hcvSerology {
            hcvLbl.text = hcv
        } else {
            hcvLbl.text = noEntryTxt
        }
        
        if let cmv = donorPressed.cmvSerology {
            cmvLbl.text = cmv
        } else {
            cmvLbl.text = noEntryTxt
        }
        
        if let ebv = donorPressed.ebvSerology {
            ebvLbl.text = ebv
        } else {
            ebvLbl.text = noEntryTxt
        }
        
        if let vzv = donorPressed.vzvSerology {
            vzvLbl.text = vzv
        } else {
            vzvLbl.text = noEntryTxt
        }
        
        if let hsv = donorPressed.hsvSerology {
            hsvLbl.text = hsv
        } else {
            hsvLbl.text = noEntryTxt
        }
        
        if let syph = donorPressed.syphlisSerology {
            syphlisLbl.text = syph
        } else {
            syphlisLbl.text = noEntryTxt
        }
        
        if let ua = donorPressed.urineAnalysis {
            uaLbl.text = ua
        } else {
            uaLbl.text = noEntryTxt
        }
        
        if let bx = donorPressed.biopsy {
            bxLbl.text = bx
        } else {
            bxLbl.text = noEntryTxt
        }
        
        if donorPressed.heartOrgan == 0 {
            otherHeartLbl.text = "No"
        } else {
            otherHeartLbl.text = "Yes"
        }
        
        if donorPressed.lungOrgan == 0 {
            otherLungLbl.text = "No"
        } else {
            otherLungLbl.text = "Yes"
        }
        
        if donorPressed.liverOrgan == 0 {
            otherLiverLbl.text = "No"
        } else {
            otherLiverLbl.text = "Yes"
        }
        
        if donorPressed.pancreaseOrgan == 0 {
            otherPancrLbl.text = "No"
        } else {
            otherPancrLbl.text = "Yes"
        }
        
        if let retrTime = donorPressed.retrievalTime {
            retrievalTimeLbl.text = retrTime
        } else {
            retrievalTimeLbl.text = noEntryTxt
        }
        
        if let perf = donorPressed.perfusionType {
            perfusionTypeLbl.text = perf
        } else {
            perfusionTypeLbl.text = noEntryTxt
        }
        
        if let comments = donorPressed.generalComment {
            commentsLbl.text = comments
        } else {
            commentsLbl.text = noEntryTxt
        }
        
        
        
    }

    @IBAction func backBtnPressed(sender: UIButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func editBtnPressed(sender: UIButton) {
        
        performSegueWithIdentifier("toEditVC", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toEditVC" {
            
            let destinVC = segue.destinationViewController as! EditTableVC
            destinVC.pressedDonor = donorPressed
        }
    }
    
   
}
