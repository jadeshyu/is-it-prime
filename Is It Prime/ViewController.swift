//
//  ViewController.swift
//  Is It Prime
//
//  Created by Jade S on 2/7/17.
//  Copyright © 2017 Jade S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var numField: UITextField!
    
    @IBOutlet var primeResult: UILabel!
    
    //Code that closes the keyboard upon tap outside
    override func touchesBegan(_: Set<UITouch>, with: UIEvent?){
        numField.resignFirstResponder()
    }
    
    var fieldNum: Int = 0
    
    @IBAction func primeButton(_ sender: Any) {
        
        var primeCount: Int = 0
        
        fieldNum = Int(numField.text!)!
        
        if fieldNum == 0 {
        
            primeResult.text = "0 is not a prime number."
        
        }
        
        else {
        
            for i in (1...fieldNum) {
            
                if fieldNum % i == 0 {
        
                    primeCount += 1
            
                    }
            
            }
        
            
            if primeCount > 2 {
                
                primeResult.text = "No, \(fieldNum) is not a prime number."
                
            }
            
            else {
            
                primeResult.text = "Yes, \(fieldNum) is a prime number."

            }
            
        }
    
    }
    
}
