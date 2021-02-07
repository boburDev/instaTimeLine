import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    // MARK: - Method
    func callSignUpController() {
        let vc:SignUpViewController = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    

    // MARK: - Actions
    
    @IBAction func onSignIn(_ sender: Any) {
    
    }
    
    @IBAction func onSugnUp(_ sender: Any) {
        callSignUpController()
    }
    
}
