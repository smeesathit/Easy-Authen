//
//  ViewController.swift
//  Easy Authen
//
//  Created by Student04 on 6/13/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Implecit declaration
    var strUser: String?
    var strPassword: String?
    
    let dicUser = ["master": "1234", "doramon": "5678", "nobita": "1234"]
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    // Create and bind object to view
        @IBOutlet weak var messageLabel: UILabel!
    
    // Create method for button action
    @IBAction func LoginButton(_ sender: Any) {
        
        
        
        // Get value from TextField
        strUser = userTextField.text
        strPassword = passwordTextField.text
        
        // Echo input string on console
        print("User ==> \(strUser!)")
        print("Password ==> \(strPassword!)")
        
        // Find String length
        let intUser = strUser?.characters.count
        let intPassword = strPassword?.characters.count
            // Echo lenght of String
        print("intUser ==> \(intUser!)")
        print("intPassword ==> \(intPassword!)")
        
        // Call checkSpace method
        if checkSpace(myString: strUser!) && checkSpace(myString: strPassword!){
            // No empty input
            print("Username & password not empty")
            messageLabel.text = ""
            checkUserAndPass(strUser: strUser!, strPassword: strPassword!)
            
        } else {
            print("Username or Password are empty")
            showMessage(strMessage: "Please fill in username or password!")
            
        } // End if-else
        
    } // Log in button method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }   // End main method
    
    func checkUserAndPass(strUser: String, strPassword: String) -> Void {
        // Authen user
        if let testUser = dicUser[strUser] { // if there is user
            print("testUser ==> \(testUser)")
        } else {
            print("testUser ==> nil")
            showMessage(strMessage: "No " + strUser + " in my database!")
        }
    }

    func showMessage(strMessage: String) -> Void {

        messageLabel.text = strMessage
    }
    
    // Check empty string
    func checkSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
            // Empty string
            result = false
        }
        
        return result
    } // End checkSpace method
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    } // End didReceive method (memeory management method)


} // End ViewController class (main class)

