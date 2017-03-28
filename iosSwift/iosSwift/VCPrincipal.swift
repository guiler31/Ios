//
//  VCPrincipal.swift
//  iosSwift
//
//  Created by Guillermo Rodríguez Sainz on 27/3/17.
//  Copyright © 2017 Guillermo Rodríguez Sainz. All rights reserved.
//

import UIKit

class VCPrincipal: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tbMiTable: UITableView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "micelda1") as! TVCMiCelda
        
        if (indexPath.row==0) {
            cell.foto?.image=UIImage(named: "imagen.jpg")
            cell.lblNombre?.text="asdf"
        }else if(indexPath.row==1){
            cell.foto?.image=UIImage(named: "imagen2.png")
            cell.lblNombre?.text="af"
        }else if(indexPath.row==2){
            cell.foto?.image=UIImage(named: "imagen.jpg")
        cell.lblNombre?.text="sdf"
            
        }else if(indexPath.row==3){
            cell.foto?.image=UIImage(named: "imagen2.png")
         cell.lblNombre?.text="adf"
            
        }else if(indexPath.row==4){
            cell.foto?.image=UIImage(named: "imagen.jpg")
            cell.lblNombre?.text="asd"
            
        }
        
        return cell
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
