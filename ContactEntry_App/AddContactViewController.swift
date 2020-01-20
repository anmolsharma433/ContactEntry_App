//
//  AddContactViewController.swift
//  ContactEntry_App
//
//  Created by Anmol Sharma on 2020-01-18.
//  Copyright © 2020 anmol. All rights reserved.
//

import UIKit

class AddContactViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    let coreData = ViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(_ sender: Any) {
        let fName = firstName.text!
        let lName = lastName.text!
        let Cphone : Int = Int(phone.text!)!
        let Cemail = email.text!
        //coreData.saveContact(firstname: fName, lastname: lName, phone: Int(Cphone), email: Cemail)
        coreData.retrieveContact()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
