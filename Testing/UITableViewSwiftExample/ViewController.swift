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
    var foodNames: [String] = ["CalHacks","HackNC","Kent Hack Enough","Changemaker Day Hackathon","LocalHackDay","BoilerMake","DubHacks","HackNJIT", "Technica", "HackHarvard", "HackPrinceton", "HackColima"];
    var foodImages: [String] = ["image1", "image2", "image3","image4","image5","image6","image7","image8", "image9", "image10", "image11", "image12"];
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return foodNames.count
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
}

