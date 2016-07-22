//
//  MaterialTxtFld.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-07-22.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//

import UIKit

class MaterialTxtFld: UITextField {

    override func awakeFromNib() {
        layer.cornerRadius = 18.0
        layer.borderColor = UIColor(red: 205/255, green: 205/255, blue: 205/255, alpha: 1.0).CGColor
        layer.borderWidth = 1.5
    }

}
