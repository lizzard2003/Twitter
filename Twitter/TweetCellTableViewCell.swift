//
//  TweetCellTableViewCell.swift
//  Twitter
//
//  Created by Liz on 12/10/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class TweetCellTableViewCell: UITableViewCell {

   
    @IBOutlet weak var TweetContent: UILabel!
    @IBOutlet weak var ProfileImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
