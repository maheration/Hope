//
//  ViewController.swift
//  Hope
//
//  Created by Maher Aldemerdash on 2016-07-22.
//  Copyright © 2016 Maher Aldemerdash. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var editBtn: UIButton!
    
    var donors = [Donor]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        fetchAndSetResult()
        tableView.reloadData()
        
    }
    
    func fetchAndSetResult() {
        
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "Donor")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            donors = results as! [Donor]
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("DonorCell") as? DonorCell {
            
            let donor = donors[indexPath.row]
            
            cell.configureCell(donor, row: indexPath.row)
            
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return donors.count
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
            
            let CurrentDonor = donors[indexPath.row]
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            context.deleteObject(CurrentDonor)
            
            do {
                try context.save()
            } catch {
                print("failed deleting")
            }
            
            donors.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
    

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let donor = donors[indexPath.row]
        performSegueWithIdentifier("toDetailVC", sender: donor)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDetailVC" {
            
            let destinVC = segue.destinationViewController as! DetailTableViewController
            destinVC.donorPressed = sender as! Donor
            
            
        }
    }
    

}

