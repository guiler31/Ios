//
//  ViewController.swift
//  Aplicacion1
//
//  Created by Eduardo Lafoz Corella on 23/3/17.
//  Copyright © 2017 Eduardo Lafoz Corella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var btnLogear:UIButton?
    @IBOutlet var btnRegistar:UIButton?
    
    @IBOutlet var txtUsuario:UITextField?
    @IBOutlet var txtContraseña:UITextField?
    
    @IBOutlet var txtConsola:UITextView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionBotonLogear() {
        
        if txtUsuario?.text==DataHolder.sharedInstance.Usuario && txtContraseña?.text==DataHolder.sharedInstance.Contraseña {
            self.performSegue(withIdentifier: "tabBar", sender: self)
        }else{
            txtConsola?.text=String(format: "USUARIO: %@ CON CONTRASEÑA: %@ NO ESTA REGISTRADO", (txtUsuario?.text)!, (txtContraseña?.text)!)
        }
        
        
        
    }
    
    
}

