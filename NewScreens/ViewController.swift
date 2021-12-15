//
//  ViewController.swift
//  NewScreens
//
//  Created by Wema Bank on 14/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mailText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var confirmPassText: UITextField!
    
    var userMail = ""
    var userPass = ""
    var confirmPass = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondController"{
            let secondController = segue.destination as! ViewController2
            secondController.userMail = userMail
            secondController.userPass = userPass
        }
    }

    @IBAction func goBtn(_ sender: Any) {
        if(mailText.text == "" || passText.text == "" || confirmPassText.text == ""){
            showAlert(title: "Empty fields", message: "Please fill all fields")
        }
        else if(passText.text != confirmPassText.text){
            showAlert(title: "Password Error", message: "Passwords don't match")
        }
        else{
            userMail = mailText.text!
            userPass = passText.text!
            performSegue(withIdentifier: "showSecondController", sender: nil)
        }
    }
    
    func showAlert(title:String,message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okayAction = UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(okayAction)
        self.present(alert, animated: true, completion: nil)
    }
}
