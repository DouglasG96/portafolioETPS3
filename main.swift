
//  Ejercicio11752052015
//
//  Created by development on 2/15/20.
//  Copyright © 2020 development. All rights reserved.
//

import Foundation

var unidad: Int = 0
var comision: Double = 0.0
var input: String
var calculoExtra: String
var keepPlaying = true
var continueGuessing = true

while keepPlaying
{
    while continueGuessing
    {
        print ("Ingrese numero de unidades: ")
        input = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
        input = input.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
        
        unidad = Int(input)!
        
        if(unidad >= 0 && unidad <= 100)
        {
            comision = Double(unidad)*0.25
        }
        else if(unidad >= 101 && unidad <= 200 )
        {
            comision = Double(unidad)*0.75
        }
        else if(unidad >= 201 && unidad <= 400)
        {
            comision = Double(unidad)*1.05
        }
        else if(unidad >= 401 && unidad <= 900)
        {
            comision = Double(unidad)*1.25
        }
        else if(unidad >= 901)
        {
            comision = Double(unidad)*1.75
        }
        else
        {
          print("unidad no puede estar vacio ni con valor 0")
        }
        print("Numero de unidades :\(unidad)")
        print("Comision calculada :\(comision)")
        
        print ("Desea realizar un calculo mas? Y/N" )
        calculoExtra = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
        calculoExtra = calculoExtra.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
        
        if(calculoExtra == "N")
        {
            continueGuessing = false
        }
    }
}

