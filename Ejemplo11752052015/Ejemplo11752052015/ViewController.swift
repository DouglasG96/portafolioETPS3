//
//  ViewController.swift
//  Ejemplo11752052015
//
//  Created by Douglas on 9/5/20.
//  Copyright © 2020 Douglas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var labelSegemento: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segementedControlPressed(_ sender: UISegmentedControl) {
        
        switch segmentedControl.selectedSegmentIndex {
            case 0: labelSegemento.text = "Uno"
            case 1: labelSegemento.text = "Dos"
            case 2: labelSegemento.text = "Tres"
            case 3: labelSegemento.text = "Cuatro"
            default: break
        }
    }

}

