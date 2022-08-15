//
//  SignUpViewController.swift
//  Introduction
//
//  Created by Wahid on 10/08/22.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
print("test")
        // Do any additional setup after loading the view.
    }

    @IBAction func signupTapped(_ sender: Any) {
        let sb = UIStoryboard(name: "Dashboard", bundle: nil)
        let vc = sb.instantiateInitialViewController()!
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func signinTap(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
}
