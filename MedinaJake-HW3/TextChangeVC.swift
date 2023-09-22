//
//  TextChangeVC.swift
//  MedinaJake-HW3
//
//  Created by Jake Medina on 9/20/23.
//
// Project: MedinaJake-HW3
// EID: jrm7784
// Course: CS371L

import UIKit

class TextChangeVC: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    // will eventually be set to the Main VC
    var delegate: UIViewController?
    
    // stores current text value from Main VC
    var textChangeVCNewName = ""
    
    // sets text field to the current text value from Main VC
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = textChangeVCNewName
    }

    // send the text to the Main VC when pressed
    @IBAction func saveButtonPressed(_ sender: Any) {
        let otherVC = delegate as! TextChanger
        otherVC.changeText(newName: textField.text!)
    }
}
