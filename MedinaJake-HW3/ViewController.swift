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

class ViewController: UIViewController, TextChanger {

    @IBOutlet weak var textLabel: UILabel!
    
    let textChangeSegueIdentifier = "TextChangeSegueIdentifier"
    
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
        }
    }
    
    func changeText(newName: String) {
        textLabel.text = newName
    }

}

