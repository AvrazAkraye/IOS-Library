//
//  Alert .Swift
//  json testing
//
//  Created by avraz on 4/21/17.
//  Copyright © 2017 avraz. All rights reserved.
//

import UIKit
extension UIViewController {
    
    func alert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
