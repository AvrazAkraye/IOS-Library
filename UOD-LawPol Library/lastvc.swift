//
//  lastvc.swift
//  UOD-LawPol Library
//
//  Created by avraz on 4/9/17.
//  Copyright © 2017 avraz. All rights reserved.
//

import UIKit

class lastvc: UIViewController {

    @IBOutlet weak var lastweb: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lastweb.setcolor()
        let urlstr = URL(string: "http://uod.ac/lawlib/m2/last.php")
        let rurl = URLRequest(url: urlstr!)
        lastweb.loadRequest(rurl)
        lastweb.keyboardDisplayRequiresUserAction = true;
           }



  
}
