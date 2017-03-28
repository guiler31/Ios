//
//  DataHolder.swift
//  iosSwift
//
//  Created by Guillermo Rodríguez Sainz on 28/3/17.
//  Copyright © 2017 Guillermo Rodríguez Sainz. All rights reserved.
//

import UIKit

class DataHolder: NSObject {

    static let sharedInstance:DataHolder=DataHolder()
    var numeroCeldasColeccion:UInt=6
    var Usuario:String?
    var Contraseña:String?
    func nombreDeCelda(numero:Int) -> NSString {
        
        if (numero==0) {
            return "asdf"
        }else if(numero==1){
            return "af"
        }else if(numero==2){
            return "sdf"
        }else if(numero==3){
            return "adf"
        }else if (numero==4){
            return "asd"
        }
        return ""
    }

}
    
    

