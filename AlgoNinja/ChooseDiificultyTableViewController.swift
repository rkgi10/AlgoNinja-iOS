//
//  SecondViewController.swift
//  AlgoNinja
//
//  Created by Rohit Gurnani on 09/07/15.
//  Copyright (c) 2015 Sophomore Ventures. All rights reserved.
//

import UIKit

class ChooseDifficultyTableViewController: UITableViewController {
    
    let identifierBundle = StringIdentifiers()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    //return cell for indexpath
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        tableView.rowHeight = 180
        let identifierforCell = (indexPath.row % 2 == 0) ? identifierBundle.identifierForOddGreyCell : identifierBundle.identifierForEvenBlueCell
        
        let cell = tableView.dequeueReusableCellWithIdentifier(identifierforCell, forIndexPath: indexPath) as! UITableViewCell
        
        let cellLabel = cell.viewWithTag(100) as! UILabel
        cellLabel.text = "Easy"
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

}

