//
//  main.swift
//  rectangulo1752052015
//
//  Created by Douglas on 22/3/20.
//  Copyright © 2020 Douglas. All rights reserved.
//

import Foundation

// Douglas Ricardo Guzmán Barahona
// 1752052015

// Inicializacion de Variables

var area: Float = 0.0
var base: Float = 0.0
var altura: Float = 0.0
var contadorItems: Int = 0
var cantidadDatos: Int = 0
var continueGuessing = true
var keepPlaying = true


//Inicializacion de arreglos
var arregloInformacion: Array<String> = Array <String>()
var arregloEncabezados: Array<String> = ["Nº", "BASE","ALTURA","AREA"]

func capturarDatos() -> Bool{
    // Inicializacion de Variables dentro del metodo
    var inputAltura: String
    var inputBase: String
    var calculoExtra: String
    var bandera: Bool = false
    
    print("Ingrese la base: ")
    inputBase = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    inputBase = inputBase.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
    base = Float(inputBase)!
    
    print("Ingrese la altura: ")
    inputAltura = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    inputAltura = inputAltura.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
    altura = Float(inputAltura)!
    contadorItems+=1
    print("Se ha almacenado el item numero \(contadorItems)")
    
    print("Desea realizar un calculo mas? Y/N" )
    calculoExtra = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    
    //Invocacion de metodo para calculo de datos
    calculoExtra = calculoExtra.replacingOccurrences(of: "\n",with: "", options: NSString.CompareOptions.literal,range: nil)
    
    area = calcularDatos(parambetroBase:base,parametroAltura:altura)
    arregloInformacion.append(String(contadorItems))
    arregloInformacion.append(String(base))
    arregloInformacion.append(String(altura))
    arregloInformacion.append(String(area))
    
    if(calculoExtra == "N" || calculoExtra == "n")
    {
        cantidadDatos = arregloInformacion.count
        //Invocacion de metodo para impresion de resultados
        imprimirResultado(parametroCantidadDatos:cantidadDatos)
        bandera = false
    }
    else if(calculoExtra == "Y" || calculoExtra == "y")
    {
        bandera = true
    }
    return bandera
}

func calcularDatos(parambetroBase:Float,parametroAltura:Float) -> Float
{
    return (base * altura)
}

func imprimirResultado(parametroCantidadDatos:Int)
{
    print("========= CALCULO DEL AREA DE UN RECTANGULO =============")
    print("=========================================================")
    print("\(arregloEncabezados[0]) || \(arregloEncabezados[1])  || \(arregloEncabezados[2]) || \(arregloEncabezados[3])")
    print("== || ===== || =====  || ===== ")
    let indiceContador : Int = ((cantidadDatos/4) - 1)
    for i in 0...indiceContador
    {
        print("\(arregloInformacion[(i*4)])  || \(arregloInformacion[(i*4)+1]) || \(arregloInformacion[(i*4)+2]) || \(arregloInformacion[(i*4)+3])")
    }
}

while keepPlaying
{
    
    while continueGuessing
    {
        /** Agregando informacion al arreglo **/
        continueGuessing = capturarDatos()
    }
}

