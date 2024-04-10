//
//  ViewController.swift
//  Login
//
//  Created by Eva Derryberry on 4/8/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var UsernameTextField: UITextField!
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    

    @IBAction func forgotUsernameButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: sender)
    }
    
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButtonPressed {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButtonPressed {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = UsernameTextField.text
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

