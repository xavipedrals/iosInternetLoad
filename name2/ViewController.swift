//
//  ViewController.swift
//  name2
//
//  Created by mac33 on 29/1/16.
//  Copyright © 2016 mac33. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
UITableViewDelegate{
    
    
    @IBOutlet weak var customTableView: UITableView!
    
    @IBOutlet weak var urlImageView: UIImageView!
    
    var usuari:User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        usuari = User.init(name: Name.init(title: "titol", first: "first", last: "last"), email: "email", phone: "666666666", imageUrl: "https://randomuser.me/api/portraits/men/25.jpg")
        
        if let url = NSURL(string: usuari.imageUrl){
            urlImageView.image = downloadImageFromUrl(url)
        }
        
        //nameLabel.text = usuari.name?.first
        //phoneLabel.text = usuari.phone
        //customTableView.
    }
    
    func downloadImageFromUrl(URL:NSURL) -> UIImage{
        if let data = NSData(contentsOfURL: URL){
            return UIImage(data: data)!
        }
        return UIImage(named: "full_placeholder")!
        
    }
    
//    func mapToArray(user:User) -> {
//        
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        if let cell = tableView.dequeueReusableCellWithIdentifier("customCell") as? TableViewCell {
            
            if indexPath.row == 0{
                cell.nameLabel.text = usuari.name?.first
                print(usuari.name?.first)
            } else if indexPath.row == 1{
                cell.nameLabel.text = usuari.phone
            } else if indexPath.row == 2{
                cell.nameLabel.text = usuari.email
            }
            
            return cell
            
        }
        return UITableViewCell()
    }
    
}

