//
//  AddViewController.swift
//  ShoppingRemimder
//
//  Created by 河野文香 on 2021/05/28.
//

import UIKit
import RealmSwift

class AddViewController: UIViewController {
    
    
    @IBOutlet var brandTextField: UITextField!
    
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addAddress() {
        let newAddress = Address()
        newAddress.brand = brandTextField.text!
        
        
        try! realm.write {
            realm.add(newAddress)
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
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
