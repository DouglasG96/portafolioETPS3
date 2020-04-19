//
//  impuestoRenta.swift
//  calcarenta1752052015
//
//  Created by Douglas on 18/4/20.
//  Copyright © 2020 Douglas. All rights reserved.
//

import Foundation

class ImpuestoRenta:NSObject
{
    var salario: Double! = 0.0000
    var impuesto: Double! = 0.0000
    var salarioNeto: Double! = 0.0000
    var exceso: Double! = 0.000
    var valorDescuento: Double! = 0.0000
    var cuotaFija: Double! = 0.0000
    var contador:Int = 0
    var datosCalculados: Array<String> = Array<String>()
    var encabezados: Array<String> = ["Numero","Salario","Forma de pago", "Descuento", "Salario Neto"]
    
    func rentaMensual() -> Double! {
        exceso = 0.000
        impuesto = 0.000
        valorDescuento = 0.000
        salarioNeto = 0.000
        if(salario >= 0.01 && salario <= 472.00)
        {
            contador += 1
            salarioNeto = salario
            valorDescuento = 0.000
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 1, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        else if(salario >= 472.01 && salario <= 895.24)
        {
            contador += 1
            cuotaFija = 17.67
            exceso = salario - 472
            impuesto = (exceso * 0.10)
            valorDescuento = (impuesto + cuotaFija)
            salarioNeto = (salario - valorDescuento)
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 1, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        else if(salario >= 895.25 && salario <= 2038.10)
        {
            contador += 1
            cuotaFija = 60
            exceso = salario - 895.24
            impuesto = (exceso * 0.20)
            valorDescuento = (impuesto + cuotaFija)
            salarioNeto = (salario - valorDescuento)
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 1, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        else if(salario > 2038.11)
        {
            contador += 1
            cuotaFija = 288.57
            exceso = salario - 2038.10
            impuesto = (exceso * 0.30)
            valorDescuento = (impuesto + cuotaFija)
            salarioNeto = (salario - valorDescuento)
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 1, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        return valorDescuento
    }
    
    func rentaQuincenal() -> Double!
    {
        exceso = 0.000
        impuesto = 0.000
        valorDescuento = 0.000
        salarioNeto = 0.000
        
        if(salario >= 0.01 && salario <= 236)
        {
            contador += 1
            salarioNeto = salario
            valorDescuento = 0.000
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 2, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        else if(salario >= 236.01 && salario <= 447.62)
        {
            contador += 1
            cuotaFija = 8.83
            exceso = salario - 236
            impuesto = (exceso * 0.10)
            valorDescuento = (impuesto + cuotaFija)
            salarioNeto = (salario - valorDescuento)
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 2, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        else if(salario >= 447.63 && salario <= 1019.05)
        {
            contador += 1
            cuotaFija = 30
            exceso = salario - 447.62
            impuesto = (exceso * 0.20)
            valorDescuento = (impuesto + cuotaFija)
            salarioNeto = (salario - valorDescuento)
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 2, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        else if(salario > 1019.06)
        {
            contador += 1
            cuotaFija = 144.28
            exceso = salario - 1019.05
            impuesto = (exceso * 0.30)
            valorDescuento = (impuesto + cuotaFija)
            salarioNeto = (salario - valorDescuento)
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 2, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        return valorDescuento
    }
    
    func rentaSemanal() -> Double!
    {
        exceso = 0.000
        impuesto = 0.000
        valorDescuento = 0.000
        salarioNeto = 0.000
        
        if(salario >= 0.01 && salario <= 118)
        {
            contador += 1
            salarioNeto = salario
            valorDescuento = 0.000
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 3, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        else if(salario >= 118.01 && salario <= 223.81)
        {
            contador += 1
            cuotaFija = 4.42
            exceso = salario - 118
            impuesto = (exceso * 0.10)
            valorDescuento = (impuesto + cuotaFija)
            salarioNeto = (salario - valorDescuento)
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 3, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        else if(salario >= 223.82 && salario <= 509.52)
        {
            contador += 1
            cuotaFija = 15
            exceso = salario - 223.81
            impuesto = (exceso * 0.20)
            valorDescuento = (impuesto + cuotaFija)
            salarioNeto = (salario - valorDescuento)
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 3, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        else if(salario > 509.53)
        {
            contador += 1
            cuotaFija = 72.14
            exceso = salario - 509.52
            impuesto = (exceso * 0.30)
            valorDescuento = (impuesto + cuotaFija)
            salarioNeto = (salario - valorDescuento)
            almacenarDatos(pContador: contador, pSalario: salario, pFormaDePago: 3, pImpuesto: valorDescuento, pSalarioNeto: salarioNeto)
        }
        return valorDescuento
    }
    
    func almacenarDatos(pContador:Int,pSalario:Double!,pFormaDePago:Int!,pImpuesto: Double!, pSalarioNeto:Double!)
    {
        datosCalculados.append(String(pSalario))
        datosCalculados.append(String(pFormaDePago))
        datosCalculados.append(String(pImpuesto))
    }
}
