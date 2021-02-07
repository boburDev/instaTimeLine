import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    
    // MARK: - Method
    
    func appDelegate() -> AppDelegate {
         return UIApplication.shared.delegate as! AppDelegate
     }
     
     func sceneDelegate() -> SceneDelegate {
         return ((UIApplication.shared.connectedScenes.first!.delegate as? SceneDelegate)!)
     }
}
