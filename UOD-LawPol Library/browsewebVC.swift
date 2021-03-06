//
//  browsewebVC.swift
//  UOD-LawPol Library
//
//  Created by avraz on 4/6/17.
//  Copyright © 2017 avraz. All rights reserved.
//

import UIKit

class browsewebVC: UIViewController {

   override func viewDidLoad() {
        super.viewDidLoad()
  
    

    
        browseweb.setcolor()
        let urlstr = URL(string: "http://uod.ac/lawlib/m2/browse.php")
        let rurl = URLRequest(url: urlstr!)
        browseweb.loadRequest(rurl)
    
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        checkReachability()
    }
    func checkReachability(){
        var isConnect:Bool = false
        var msg: String = ""
        if currentReachabilityStatus == .reachableViaWiFi {
            print("User is connected to the internet via wifi.")
            isConnect = true
        }else if currentReachabilityStatus == .reachableViaWWAN{
            
            print("User is connected to the internet via WWAN.")
            isConnect =  true
        } else {
            msg = "There is no internet connection"
            print("There is no internet connection")
            isConnect = false
        }
        
        if(!isConnect){
            
            let alert = UIAlertController(title: "Opss!", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK",
                                             style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            self.present(alert, animated: true)
            
        }
        
    }

    
    @IBOutlet weak var browseweb: UIWebView!

  
}
