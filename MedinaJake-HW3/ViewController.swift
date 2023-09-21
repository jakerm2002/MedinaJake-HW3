//
//  ViewController.swift
//  MedinaJake-HW3
//
//  Created by Jake Medina on 9/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    let textChangeSegueIdentifier = "TextChangeSegueIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == textChangeSegueIdentifier,
           let destination = segue.destination as? TextChangeVC
        {
            
            destination.inputText = textLabel.text!
        }
    }
    
    


}

