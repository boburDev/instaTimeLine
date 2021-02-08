import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableHomeView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }


    
    // MARK: - Method
    
    func initViews() {
        tableHomeView.dataSource = self
        tableHomeView.delegate = self
        
        
        setNavigationBar()
    }
    
    func setNavigationBar() {
        
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftBtnOnPress))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightBtnOnPress))
        
        title = "Instagram"
    }
    
    // MARK: - Action
    
    @objc func leftBtnOnPress(){
        
    }
    
    @objc func rightBtnOnPress(){
        
    }
    
    // MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
