//
//  ContainerVC.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-07-22.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancelBtnPressed(sender: UIButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
}
