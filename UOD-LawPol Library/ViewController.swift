//
//  ViewController.swift
//  UOD-LawPol Library
//
//  Created by avraz on 4/1/17.
//  Copyright © 2017 avraz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var varurl = ""
   
    
       @IBOutlet weak var mainwebview: UIWebView!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        self.title = varurl
        let mainurl = "http://192.168.1.11/lib/m/search.php?name=\(varurl)"
         let escapedString = mainurl.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)
        let aa = NSURL(string: escapedString!)
       

        //   let URL = NSURL(string: stringUrl.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!)!
      //  let urling = URLRequest(url: URL("http://192.168.1.11/lib/m/search.php"))
       
        mainwebview.loadRequest(URLRequest(url: aa as! URL))
        mainwebview.setcolor()
        
            
      
        
        
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

