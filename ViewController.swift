//
//  ViewController.swift
//  M6Initializer_Goodman
//
//  Created by Goodman, Dakota K. on 2/26/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var modeControl: UISegmentedControl!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func resultTapped(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Try it out."
        ageTextField.keyboardType = .numberPad
    }

    class Person{
        var name: String
        var age: Int
        
        init(name: String, age: Int){
            self.name = name
            self.age = age
        }
    
        convenience init() {
            self.init(name: "anon", age: 0)
        }
        
        convenience init(name: String) {
            self.init(name: name, age: 0)
        }
        
        convenience init?(name: String, using age: Int) {
            self.init(name: name, age: age)
        }
        
    }

    class ValidatedPerson{
        let name: String
        let age: Int
        
        init?(name: String, age: Int){
            guard !name.isEmpty, age > 0 else{
                return nil
            }
            self.name = name
            self.age = age
        }
    }
}

