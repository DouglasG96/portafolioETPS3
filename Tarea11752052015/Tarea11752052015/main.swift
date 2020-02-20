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
var comision: Double = 0.0
var valorUnitario: Double = 0.0
var contadorItems: Int = 0
var cantidadDatos: Int = 0
var inputUnidades: String
var calculoExtra: String
var keepPlaying = true
var continueGuessing = true

// Inicializacion de arreglos
var arregloComisiones: Array<String> = Array <String>()
var arregloEncabezados: Array<String> = ["ITEM","UNIDADES","VALOR UNITARIO","COMISION"]


while keepPlaying
{
    while continueGuessing
    {
        print("Ingrese numero de unidades: ")

        inputUnidades = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
        inputUnidades = inputUnidades.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
        unidad = Int(inputUnidades)!
        switch unidad
        {
            case 0 ... 200:
                contadorItems+=1
                valorUnitario = 0.25
                comision = (Double(unidad)*valorUnitario)
            case 201 ... 400:
                contadorItems+=1
                valorUnitario = 0.75
                comision = (Double(unidad)*valorUnitario)
            case 401 ... 600:
                contadorItems+=1
                valorUnitario = 1.05
                comision = (Double(unidad)*valorUnitario)
            case 601 ... 800:
                valorUnitario = 1.25
                contadorItems+=1
                comision = (Double(unidad)*valorUnitario)
            default:
                contadorItems+=1
                valorUnitario = 1.75
                comision = (Double(unidad)*valorUnitario)
        }
        arregloComisiones.append(String(contadorItems))
        arregloComisiones.append(String(unidad))
        arregloComisiones.append(String(valorUnitario))
        arregloComisiones.append(String(comision))
        print("Se ha almacenado el item numero \(contadorItems)")
        print ("Desea realizar un calculo mas? Y/N" )

        calculoExtra = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
        calculoExtra = calculoExtra.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
        
        cantidadDatos = arregloComisiones.count
        
        if(calculoExtra == "N" || calculoExtra == "n")
        {
          print("========= TABLA DE CALCULO DE COMISIONES ===============")
          print("========================================================")
          print("\(arregloEncabezados[0]) || \(arregloEncabezados[1]) || \(arregloEncabezados[2]) || \(arregloEncabezados[3])")
          print("=====||==========||================||===================")
          var indiceContador : Int = ((cantidadDatos/4) - 1) 
          for i in 0...indiceContador
          {
              print("\(arregloComisiones[(i*4)])          \(arregloComisiones[(i*4)+1])           $\(arregloComisiones[(i*4)+2])              $\(arregloComisiones[(i*4)+3])")
              print("=====||==========||================||===================")

          }
          continueGuessing = false
        }
        else if(calculoExtra == "Y" || calculoExtra == "y")
        {
          continueGuessing = true
        }
    }
}