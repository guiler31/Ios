//
//  VCItem1.swift
//  Actividad1
//
//  Created by Guillermo Rodríguez Sainz on 14/3/17.
//  Copyright © 2017 Guillermo Rodríguez Sainz. All rights reserved.
//

import UIKit

class VCItem1: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var celdap: Celda1 = tableView.dequeueReusableCell(withIdentifier: "zelda", for: indexPath) as! Celda1
        
        
        
        celdap.lblNombre?.text="***"
        if (indexPath.row == 0) {
            celdap.lblNombre?.text="Prueba"
        }else if (indexPath.row == 1){
            celdap.lblNombre?.text="Prueba2"
        }else if (indexPath.row == 2){
            celdap.lblNombre?.text="Prueba3"
        }
        
        return celdap
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog(" posicion seleccionada: %d", indexPath.row)
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
