//
//  aboutwebVc.swift
//  UOD-LawPol Library
//
//  Created by avraz on 4/6/17.
//  Copyright © 2017 avraz. All rights reserved.
//

import UIKit

class aboutwebVc: UIViewController {
    
    var url = "http://uod.ac/lawlib/m2/about.php"
    
    
    @IBOutlet weak var aboutweb: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        aboutweb.setcolor()
        let urlstr = URL(string: url)
        let rurl = URLRequest(url: urlstr!)
        aboutweb.loadRequest(rurl)
        
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



}
