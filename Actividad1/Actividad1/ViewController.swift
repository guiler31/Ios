//
//  ViewController.swift
//  Actividad1
//
//  Created by Guillermo Rodríguez Sainz on 7/3/17.
//  Copyright © 2017 Guillermo Rodríguez Sainz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblHolaMundo:UILabel?
    @IBOutlet var btnMain:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //lblHolaMundo?.text="HOLA MUNDO"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionBoton(){
        lblHolaMundo?.text="HOLA MUNDO"
    }


}

