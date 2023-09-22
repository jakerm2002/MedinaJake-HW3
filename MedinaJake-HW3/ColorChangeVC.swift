//
//  ColorChangeVC.swift
//  MedinaJake-HW3
//
//  Created by Jake Medina on 9/21/23.
//
// Project: MedinaJake-HW3
// EID: jrm7784
// Course: CS371L

import UIKit

class ColorChangeVC: UIViewController {
    
    var delegate: UIViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // updates Main VC bg color to blue
    @IBAction func blueButtonPressed(_ sender: Any) {
        let otherVC = delegate as! ColorChanger
        otherVC.changeColor(newColor: UIColor.blue)
    }
    
    // updates Main VC bg color to red
    @IBAction func redButtonPressed(_ sender: Any) {
        let otherVC = delegate as! ColorChanger
        otherVC.changeColor(newColor: UIColor.red)
    }
}
