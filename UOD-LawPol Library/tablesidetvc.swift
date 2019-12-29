//
//  tablesidetvc.swift
//  UOD-LawPol Library
//
//  Created by avraz on 4/9/17.
//  Copyright © 2017 avraz. All rights reserved.
//

import UIKit
import SafariServices

class tablesidetvc: UITableViewController{
    
    @IBOutlet var maintableview: UITableView!
    @IBOutlet weak var actiontb: UITableView!
    let aa = tabbarViewController();
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up your background color view
        let colorView = UIView()
        colorView.backgroundColor = UIColor.init(red: 0, green: 0, blue: 10, alpha: 1)
        UITableViewCell.appearance().selectedBackgroundView = colorView
        
        
        // background
        tableView.backgroundColor = UIColor.black
      //  actiontb.backgroundColor = UIColor.black

//        actiontb.dataSource = self
//        actiontb.delegate = self
           }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
            return 3
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = maintableview.dequeueReusableCell(withIdentifier: "actioncell", for: indexPath) as UITableViewCell
            cell.backgroundColor = UIColor.black
            cell.textLabel?.textColor = UIColor.white
            if indexPath.row == 0 {
                cell.textLabel?.text = "Facebook Page"
               cell.imageView?.image = UIImage(named: "2.png")
            }
            if indexPath.row == 1 {
                cell.textLabel?.text = "LAW-POL Website"
                cell.imageView?.image = UIImage(named: "4.png")
            }
            if indexPath.row == 2 {
                cell.textLabel?.text = "Location"
                cell.imageView?.image = UIImage(named: "3.png")
            }
      
            
            return cell
        
        
       
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            if indexPath.row == 0 {
                guard let facebookURL = NSURL(string: "https://facebook.com/clp.uod") else {
                    return
                }
                
                if (UIApplication.shared.canOpenURL(facebookURL as URL)) {
                    UIApplication.shared.openURL(facebookURL as URL)
                } else {
                    
                    guard let webpageURL = NSURL(string: "http://facebook.com/clp.uod/") else {
                        return
                    }
                    
                    UIApplication.shared.openURL(webpageURL as URL)
                }
            }
            
            if indexPath.row == 1 {
           
                let svc = SFSafariViewController(url: URL(string:"http://web.uod.ac/ac/c/clp/")!)
                self.present(svc, animated: true, completion: nil)
            }
            
        
            // location
            if indexPath.row == 2 {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let main = storyboard.instantiateViewController(withIdentifier: "locationVC")
                self.present(main, animated: true, completion: nil)
                
            }
        
    }
    
    
    

}
