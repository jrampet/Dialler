//
//  ViewController.swift
//  Navigation Controller
//
//  Created by Jeyaram on 30/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addButton : UIButton!
    
    @IBAction func textFieldOnChange(_ sender: Any) {
        print("ASA")
    }
    @IBOutlet weak var field : UITextField!
    @IBAction func addNumber(_ sender: UIButton) {
        guard let contactNumber = field.text else {
            return
        }
        if(contactNumber.count > 1){
            showInputDialog(contactNumber)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
       
    }

    @IBAction func pressedNumber(_ sender: RoundButton) {
        guard let currentNumber = field.text else{
            return
        }
        field.text = currentNumber + "\(sender.tag)"
    }
    
    @IBAction func onValueChange(_ sender: Any) {
        print("Changing")
    }
    
    @IBAction func onBackPressed(_ sender: RoundButton) {
        if let currentNum = field.text{
                    var currentNumber = currentNum
                    if currentNum.count == 1{
                        currentNumber = ""
                        field.text = ""
                    }else{
                        currentNumber.remove(at: currentNumber.index(before: currentNumber.endIndex))
                        field.text = currentNumber
                    }
                    
                   
                }
    }
    @IBAction func editingChange(_ sender: Any) {
        print("EDITING")
    }
    
    func showInputDialog(_ conNumber:String) {
           //Creating UIAlertController and
           //Setting title and message for the alert dialog
           let alertController = UIAlertController(title: "Enter details", message: "Enter  name", preferredStyle: .alert)
           
           //the confirm action taking the inputs
           let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
               
               //getting the input values from user
            guard let conName = alertController.textFields?[0].text else{
                return
            }
              
            print(conName)
            let member = Person(number: conNumber, name: conName)
            var contactBook = contact()
            contactBook.contacts.append(member)
            
//            contact(contact.contacts.append(member))
//               self.labelMessage.text = "Name: " + name! + "Email: " + email!
               
           }
           
           //the cancel action doing nothing
           let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
           
           //adding textfields to our dialog box
           alertController.addTextField { (textField) in
               textField.placeholder = "Enter Name"
           }
           
           
           //adding the action to dialogbox
           alertController.addAction(confirmAction)
           alertController.addAction(cancelAction)
           
           //finally presenting the dialog box
           self.present(alertController, animated: true, completion: nil)
       }
}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField:UITextField)->Bool{
        field.text = "787878"
        return true
    }
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("DSDSDS")
    }
}
