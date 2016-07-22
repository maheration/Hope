//
//  ViewController.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-07-22.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var editBtn: UIButton!
    
    var names = ["majer", "mohammed", "lulu"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("DonorCell") as? DonorCell {
            
            let name = names[indexPath.row]
            cell.titleLbl.text = name
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    @IBAction func edit(sender: AnyObject) {
        
        if sender.currentTitle! == "EDIT" {
            
            sender.setTitle("DONE", forState: UIControlState.Normal)
            tableView.setEditing(true, animated: true)

            
        } else {
            sender.setTitle("EDIT", forState: .Normal)
            tableView.setEditing(false, animated: true)

        }
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            names.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
    
    
    

}

