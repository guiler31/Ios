//
//  VCRegistro.swift
//  Aplicacion1
//
//  Created by Eduardo Lafoz Corella on 23/3/17.
//  Copyright © 2017 Eduardo Lafoz Corella. All rights reserved.
//

import UIKit

class VCRegistro: UIViewController {
    
    @IBOutlet var btnRegistrar2:UIButton?
    @IBOutlet var btnCancelar:UIButton?
    
    @IBOutlet var txtUsuario2:UITextField?
    @IBOutlet var txtContraseña2:UITextField?
    @IBOutlet var txtRepetirContraseña:UITextField?
    @IBOutlet var txtEmail:UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func accionBotonRegistrar() {
        
        DataHolder.sharedInstance.Usuario=txtUsuario2?.text
        DataHolder.sharedInstance.Contraseña=txtContraseña2?.text
        self.performSegue(withIdentifier: "Transicion2", sender: self)
        
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
