import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableHomeView: UITableView!
    var postItems: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }


    
    // MARK: - Method
    
    func initViews() {
        tableHomeView.dataSource = self
        tableHomeView.delegate = self
        
        
        setNavigationBar()
        
        postItems.append(Post(fullname: "Bobur", user_img: "im_man", post_img: "im_post-one"))
        postItems.append(Post(fullname: "Lola", user_img: "im_woman", post_img: "im_post-two"))
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
        return postItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = postItems[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.username.text = post.fullname
        cell.user_img.image = UIImage(named: post.user_img)
        cell.post_img.image = UIImage(named: post.post_img)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
