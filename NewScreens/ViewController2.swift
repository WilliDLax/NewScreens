//
//  ViewController2.swift
//  NewScreens
//
//  Created by Wema Bank on 14/12/2021.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    
    var userMail = ""
    var userPass = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mailLabel.text = "Email:   \(userMail)"
        passLabel.text = "Password:   \(userPass)"
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
