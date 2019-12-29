//
//  searchvc.swift
//  UOD-LawPol Library
//
//  Created by avraz on 4/1/17.
//  Copyright © 2017 avraz. All rights reserved.
//

import UIKit
import Alamofire

class searchvc: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()

        txtsearch.attributedPlaceholder =
            NSAttributedString(string: "Search in library", attributes: [NSForegroundColorAttributeName : UIColor.white])
        
        searchbtn.layer.cornerRadius = 10
        searchbtn.layer.borderWidth = 1
        searchbtn.layer.borderColor = UIColor.black.cgColor
       
    }
    
    @IBOutlet weak var searchbtn: UIButton!
    
    // hide the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    @IBOutlet weak var txtsearch: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem
        let viewc:ViewController = segue.destination as! ViewController
        let aa = txtsearch.text
        viewc.varurl = aa!
    }


}
