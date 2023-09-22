//
//  ViewController.swift
//  MedinaJake-HW3
//
//  Created by Jake Medina on 9/20/23.
//
// Project: MedinaJake-HW3
// EID: jrm7784
// Course: CS371L

import UIKit

protocol TextChanger {
    func changeText(newName:String)
}

protocol ColorChanger {
    func changeColor(newColor:UIColor)
}

class ViewController: UIViewController, TextChanger, ColorChanger {

    @IBOutlet weak var textLabel: UILabel!
    
    let textChangeSegueIdentifier = "TextChangeSegueIdentifier"
    let colorChangeSegueIdentifier = "ColorChangeSegueIdentifier"
    
    // Initializes the text value so it can be recieved by the TextChangeVC
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Text goes here"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == textChangeSegueIdentifier,
           let destination = segue.destination as? TextChangeVC
        {
            // allow TextChangeVC to change the text using us
            destination.delegate = self
            // send the current text value to the TextChangeVC
            destination.textChangeVCNewName = textLabel.text!
        } else if segue.identifier == colorChangeSegueIdentifier,
                  let destination = segue.destination as? ColorChangeVC
        {
            // allow ColorChangeVC to change the color using us
            destination.delegate = self
        }
    }
    
    func changeText(newName: String) {
        textLabel.text = newName
    }
    
    func changeColor(newColor: UIColor) {
        textLabel.backgroundColor = newColor
    }

}

