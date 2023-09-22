//
//  ViewController.swift
//  MedinaJake-HW3
//
//  Created by Jake Medina on 9/20/23.
//

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.text = "Text goes here"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == textChangeSegueIdentifier,
           let destination = segue.destination as? TextChangeVC
        {
            destination.delegate = self
            destination.textChangeVCNewName = textLabel.text!
        } else if segue.identifier == colorChangeSegueIdentifier,
                  let destination = segue.destination as? ColorChangeVC
        {
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

