//
//  DetailViewController.swift
//  Libros1752052015
//
//  Created by Douglas on 16/5/20.
//  Copyright © 2020 Douglas. All rights reserved.
//
//  Carné: 17-5205-2015
//  Nombre Completo: Douglas Ricardo Guzmán Barahona


import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblAutor: UILabel!
    @IBOutlet weak var txtDescripcion: UITextView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let lblTitulo = self.lblTitulo {
                lblTitulo.text = detail.titulo!.description
            }
            if let lblAutor = self.lblAutor {
                lblAutor.text = detail.autor!.description
            }
            if let txtDescripcion = self.txtDescripcion {
                txtDescripcion.text = detail.descripcion!.description
            }
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Libros? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

