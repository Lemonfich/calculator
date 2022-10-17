//
//  ViewController.swift
//  calculator
//
//  Created by Сергей on 17.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UILabel!
    
    var result = 0
    var firstNum = 0.0
    var numberForScreen = 0.0
    var operation = false
    
    
    @IBAction func digits(_ sender: UIButton) {
        if Int(textField.text!) == 0 {
           textField.text = String(sender.tag)
            
        }else if
        operation == true {
        textField.text = String(sender.tag)
        numberForScreen = Double(textField.text!)!
            operation = false
         }else{
        textField.text =  textField.text! + String(sender.tag)
        numberForScreen = Double(textField.text!)!
            
        }
    }
    
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if textField.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNum = Double(textField.text!)!
            if sender.tag == 11 {   textField.text = "/"    //  /
            }
            else if  sender.tag == 12 {  textField.text = "x"      //   X
            }
            else if sender.tag == 13 {  textField.text = "-"       // -
            }
            else if sender.tag == 14 {   textField.text = "+"     //   +
            }
            operation = true
            result = sender.tag
        }
        else if sender.tag == 15 {
            if result == 11{
                textField.text =  String (firstNum / numberForScreen)
            }else if  result == 12{
                textField.text = String (firstNum * numberForScreen)
            }else if  result == 13{
                textField.text = String (firstNum - numberForScreen)
            }else if  result == 14{
                textField.text = String (firstNum + numberForScreen)
            }
            
        }
        else if sender.tag == 10 {
            textField.text = ""
             firstNum = 0
            numberForScreen = 0
            result = 0
        }
    }
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

