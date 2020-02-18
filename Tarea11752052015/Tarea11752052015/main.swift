//
//  main.swift
//  Tarea11752052015
//
//  Created by Douglas on 16/2/20.
//  Copyright © 2020 Douglas. All rights reserved.
//

import Foundation

// Inicializacion de Variables
var unidad: Int = 0
var longitudArreglo: Int = 0
var comision: Double = 0.0
var valorUnitario: Double = 0.0
var contadorItems: Int = 0
var inputUnidades: String
var inputValorUnitario: String
var calculoExtra: String
var keepPlaying = true
var continueGuessing = true


// Inicializacion de arreglos
var arregloValorUnitario:Array<Double> = Array <Double>()
var arregloUnidades: Array<Int> = Array <Int>()
var arregloComisiones: Array<Double> = Array <Double>()

while keepPlaying
{
    while continueGuessing
    {
        print("Ingrese numero de unidades: ")
        inputUnidades = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
        inputUnidades = inputUnidades.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
        
        unidad = Int(inputUnidades)!
        arregloUnidades.append(unidad)
        
        print("Ingrese el valor unitario: ")
        inputValorUnitario = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
        inputValorUnitario = inputValorUnitario.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
        
        valorUnitario = Double(inputValorUnitario)!
        arregloValorUnitario.append(valorUnitario)
        
        comision = (Double(unidad)*valorUnitario)
        arregloComisiones.append(comision)
        
        contadorItems+=1
        print("# de de item :\(contadorItems)")
        print("Numero de unidades :\(unidad)")
        print("Valor unitario")
        print("Comision calculada :\(comision)")
        
        print ("Desea realizar un calculo mas? Y/N" )
        calculoExtra = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
        calculoExtra = calculoExtra.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
        
        if(calculoExtra == "N")
        {
            continueGuessing = false
        }
        else
        {
            for i in arregloUnidades
            {
                for j in arregloValorUnitario
                {
                    
                }
            }
        }
    }
}


