//
//  ccell.swift
//  UOD-LawPol Library
//
//  Created by avraz on 4/9/17.
//  Copyright © 2017 avraz. All rights reserved.
//

import UIKit

class ccell: UITableViewCell {

    @IBOutlet weak var textcell: UILabel!
    @IBOutlet weak var imagecell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
