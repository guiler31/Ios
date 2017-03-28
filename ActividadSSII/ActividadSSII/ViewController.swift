//
//  ViewController.swift
//  ActividadSSII
//
//  Created by Guillermo Rodríguez Sainz on 22/3/17.
//  Copyright © 2017 Guillermo Rodríguez Sainz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var btnLogear:UIButton!
    @IBOutlet weak var txtfUsuario:UITextField!
    @IBOutlet weak var txtfPass:UITextField!
    @IBOutlet var txtVConsola: UITextView?
    
    
    
    @IBAction func accionBotonLogear(){
        //txtVConsola?.text="Hola Mundo"
        let userEmail = txtfUsuario.text
        let userPass = txtfPass.text
        
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail")
        let userPassStored = UserDefaults.standard.string(forKey: "userPass")
        
        if userEmailStored == userEmail{
            if userPassStored == userPass {
                //login successful
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true, completion: nil)
                
            }
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

