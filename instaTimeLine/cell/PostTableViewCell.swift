//
//  PostTableViewCell.swift
//  instaTimeLine
//
//  Created by Boburmirzo on 2/8/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var user_img: UIImageView!
    @IBOutlet weak var post_img1: UIImageView!
    @IBOutlet weak var post_img2: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
