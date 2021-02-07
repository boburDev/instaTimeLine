//
//  SignUpViewController.swift
//  instaTimeLine
//
//  Created by Boburmirzo on 2/7/21.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



    // MARK: - Method
    
    func callSignInController() {
        let vc:SignInViewController = SignInViewController(nibName: "SignInViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    

    
    // MARK: - Action
    
    
    @IBAction func onSignUp(_ sender: Any) {
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        callSignInController()
    }
}
