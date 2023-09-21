//
//  TextChangeVC.swift
//  MedinaJake-HW3
//
//  Created by Jake Medina on 9/20/23.
//

import UIKit

class TextChangeVC: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var inputText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = inputText
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//    @IBAction func saveText(_ sender: Any) {
//    }
}
