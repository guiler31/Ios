//
//  Celda1.swift
//  Actividad1
//
//  Created by Guillermo Rodríguez Sainz on 14/3/17.
//  Copyright © 2017 Guillermo Rodríguez Sainz. All rights reserved.
//

import UIKit

class Celda1: UITableViewCell {

    
    
    @IBOutlet var lblNombre:UILabel?
    @IBOutlet var imgFoto:UIImageView?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
