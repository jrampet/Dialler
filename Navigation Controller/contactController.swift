//
//  contactController.swift
//  Navigation Controller
//
//  Created by Jeyaram on 04/05/21.
//

import UIKit

class contactController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onPressed(_ sender: UIButton) {
        printDetails()
    }
    func printDetails(){
        print("SSSS")
        let p = contact()
        for member in p.contacts{
            print(member.name,member.number)
        }
    }
}
