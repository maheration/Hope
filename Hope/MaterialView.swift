//
//  MaterialView.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-07-22.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//

import UIKit

class MaterialView: UIView {

    override func awakeFromNib() {
        layer.shadowColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 0.8).CGColor
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 3.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }
}
