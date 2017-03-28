//
//  VCRegister.swift
//  ActividadSSII
//
//  Created by Guillermo Rodríguez Sainz on 22/3/17.
//  Copyright © 2017 Guillermo Rodríguez Sainz. All rights reserved.
//

import UIKit

class VCRegister: UIViewController {

    @IBOutlet weak var usuario: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var RpPassword: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    @IBAction func registro(_ sender: Any) {
        
        let userEmail = usuario.text
        let userPass = password.text
        let userRepeatPass = RpPassword.text
        
        //Check empty field
        if (userEmail?.isEmpty)! || (userPass?.isEmpty)! || (userRepeatPass?.isEmpty)! {
            //Display alert message
            displayMyAlertMessage(userMessage: "All fields are required")
            return
        }
        
        //Check pass match
        if userPass != userRepeatPass {
            //alert
            displayMyAlertMessage(userMessage: "Mismatch Passwords")
            return
        }
        // Store data
        UserDefaults.standard.setValue(userEmail, forKey: "userEmail")
        UserDefaults.standard.setValue(userPass, forKey: "userPass")
        UserDefaults.standard.synchronize()
        
        //Confirmation
        var myAlert = UIAlertController(title: "Alert", message: "registration successful", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default){ action in
            self.dismiss(animated: true, completion: nil)
        }
        
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
        
    }
    
    func displayMyAlertMessage(userMessage:String) {
        var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler:nil)
        
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion: nil)
        
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
