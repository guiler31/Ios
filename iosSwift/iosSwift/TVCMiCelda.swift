//
//  TVCMiCelda.swift
//  iosSwift
//
//  Created by Guillermo Rodríguez Sainz on 27/3/17.
//  Copyright © 2017 Guillermo Rodríguez Sainz. All rights reserved.
//

import UIKit

class TVCMiCelda: UITableViewCell {
    
    @IBOutlet var lblNombre: UILabel?
    @IBOutlet var foto: UIImageView?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
