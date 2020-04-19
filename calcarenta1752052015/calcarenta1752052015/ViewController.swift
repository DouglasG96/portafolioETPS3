//
//  ViewController.swift
//  calcarenta1752052015
//
//  Created by Douglas on 18/4/20.
//  Copyright © 2020 Douglas. All rights reserved.
//
// Douglas Ricardo Guzman Barahona
// 17-5205-2015

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var txtSalario: UITextField!
    @IBOutlet weak var txtFormaPago: UITextField!
    @IBOutlet weak var lblValorDescuento: UILabel!
    @IBOutlet weak var btnCalcularDatos: UIButton!
    
    var salarioString:String! = ""
    var formaPagoString:String! = ""
    var formaPago: Int! = 0
    var valorDescuento: Double = 0.000
    var impuestoRenta : ImpuestoRenta
    
    required init?(coder aDecoder: NSCoder) {
        impuestoRenta = ImpuestoRenta()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calcularDatos(_ sender: Any) {
        salarioString = txtSalario.text
        formaPagoString = txtFormaPago.text
        impuestoRenta.salario = Double(salarioString)
        formaPago = Int(formaPagoString)
        validarFormaPago(formaPagoParametro: formaPago)
    }
    
    func validarFormaPago(formaPagoParametro:Int)
    {
        switch formaPagoParametro {
        case 1:
            valorDescuento = impuestoRenta.rentaMensual()
            lblValorDescuento.text = "$"+String(valorDescuento)
        case 2:
            valorDescuento = impuestoRenta.rentaQuincenal()
            lblValorDescuento.text = "$"+String(valorDescuento)
        default:
            valorDescuento = impuestoRenta.rentaSemanal()
            lblValorDescuento.text = "$"+String(valorDescuento)
        }
    }
}

