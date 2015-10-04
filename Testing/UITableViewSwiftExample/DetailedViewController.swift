//
//  DetailedViewController.swift
//  UITableViewSwiftExample
//
//  Created by Adit Gupta on 10/4/15.
//  Copyright © 2015 makemegeek. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    var image: UIImage!
    var text: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = image
        self.textView.text = text
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    

    @IBOutlet weak var textView: UITextView!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
