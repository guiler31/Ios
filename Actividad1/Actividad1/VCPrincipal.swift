//
//  VCPrincipal.swift
//  Actividad1
//
//  Created by Guillermo Rodríguez Sainz on 7/3/17.
//  Copyright © 2017 Guillermo Rodríguez Sainz. All rights reserved.
//

import UIKit

class VCPrincipal: UIViewController {

    @IBOutlet var lblHolaMundo:UILabel?
    @IBOutlet var btnMain:UIButton?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionBoton(){
        lblHolaMundo?.text="salsa"
        self.performSegue(withIdentifier: "trans1", sender: self)
       
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
