//
//  ViewController.swift
//  ContactEntry_App
//
//  Created by Anmol Sharma on 2020-01-18.
//  Copyright © 2020 anmol. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var fname : String = ""
    var lname : String = ""
    var phone : String = ""
    var email : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Save contact
    func saveContact(firstname : String,lastname : String,phone : Int,email : String)
    {
        //Setting up the app delegate
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        //creating context from the container
        let context = appDelegate.persistentContainer.viewContext
        
        //creating entity
        let entity = NSEntityDescription.entity(forEntityName: "Contacts", in: context)
        
        let data = NSManagedObject(entity: entity!, insertInto: context)
        data.setValue(firstname, forKey: "firstName")
        data.setValue(lastname, forKey: "lastName")
        data.setValue(phone, forKey: "phone")
        data.setValue(email, forKey: "email")
        
        do{
            try context.save()
            print("Data Saved")
        }catch let error as NSError{
            print("Error Could not save Data. \(error),\(error.userInfo)")
        }
        
    }
    
    //retrieve Contact
    func retrieveContact()
    {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{return}
        
        let Context = appDelegate.persistentContainer.viewContext
        
        //preparing the request of type NsFetchRequestfor the entity
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Contacts")
        
        do{
            let result = try Context.fetch(fetchRequest)
            for data in result as! [NSManagedObject]
            {
//                 fname = value(forKey: "firstName") as! String
//                 lname = value(forKey: "lastName") as! String
//                 phone = value(forKey: "phone") as! String
//                 email = value(forKey: "email") as! String
            print(data.value(forKey: "firstName") as! String)
            print(data.value(forKey: "lastName") as! String)
                print("Data Successfully retrieved")
            }
        }
        catch{
            print("Failed")
        }
        
    }


}

