//
//  ViewController.swift
//  UITableViewSwiftExample
//
//  Created by Mani Shankar on 12/02/15.
//  Copyright (c) 2015 makemegeek. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableViewObject: UITableView!
    let foodNames: [String] = ["CalHacks","HackNC","Kent Hack Enough","Changemaker Day Hackathon","LocalHackDay","BoilerMake","DubHacks","HackNJIT", "Technica", "HackHarvard", "HackPrinceton", "HackColima"];
    let foodImages: [String] = ["image1", "image2", "image3","image4","image5","image6","image7","image8", "image9", "image10", "image11", "image12"];
    
    
    
    var selectedIndex: Int = 0
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return foodNames.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedIndex = indexPath.row
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.performSegueWithIdentifier("showDetails", sender: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")
        cell.textLabel!.text = foodNames[indexPath.row]
        
        var image : UIImage = UIImage(named: foodImages[indexPath.row])!
        cell.imageView!.image = image
        
        return cell
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
//        self.tableViewObject.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier=="showDetails"
        {
            let name = foodNames[selectedIndex]
            let imageName = foodImages[selectedIndex]
            let destination = segue.destinationViewController as! DetailedViewController
            //Customization
            let image = UIImage(named: imageName)
            destination.image = image
            destination.text = name
            
        
        }
        
    }
}



