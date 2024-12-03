//
//  ViewController.swift
//  myCalculator
//
//  Created by Carlos Taay on 11/24/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtOne: UITextView!
    @IBOutlet weak var txtTwo: UITextView!
    @IBOutlet weak var txtResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }

    @IBAction func btnAdd(_ sender: Any) {
        let numOne = Int(txtOne.text!)!
        let numTwo = Int(txtTwo.text!)!
        txtResult.text = String(numOne + numTwo)
    }
    
    @IBAction func btnSub(_ sender: Any) {
        let numOne = Int(txtOne.text!)!
        let numTwo = Int(txtTwo.text!)!
        txtResult.text = String(numOne - numTwo)
    }
    
    @IBAction func btnMul(_ sender: Any) {
        let numOne = Int(txtOne.text!)!
        let numTwo = Int(txtTwo.text!)!
        txtResult.text = String(numOne * numTwo)
    }
    
    @IBAction func btnDiv(_ sender: Any) {
        let numOne = Double(txtOne.text!)!
        let numTwo = Double(txtTwo.text!)!
        txtResult.text = String(numOne / numTwo)
    }
    
}

