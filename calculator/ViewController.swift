//
//  ViewController.swift
//  calculator
//
//  Created by Сергей on 17.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UILabel!
    
    var numberForScreen = 0.0
    
    
    
    @IBAction func digits(_ sender: UIButton) {
        if Int(textField.text!) == 0 {
           textField.text = String(sender.tag)
            
        }else {
            textField.text =  textField.text! + String(sender.tag)
            numberForScreen = Double(textField.text!)!
            
        }
    }
    
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if textField.text != "" {
            if sender.tag == 11 {       //  /
            }
            else if  sender.tag == 12 {        //   X
            }
            else if sender.tag == 13 {         // -
            }
            else if sender.tag == 14 {        //   +
            }
            
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

