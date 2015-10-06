//
//  tweetCell.swift
//  TwitterClient
//
//  Created by Anand Gupta on 9/29/15.
//  Copyright © 2015 walmartlabs. All rights reserved.
//

import UIKit

class tweetCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var userHandlerLabel: UILabel!
    
    @IBOutlet weak var tweetTimeLabel: UILabel!
    
    @IBOutlet weak var tweetLabel: UILabel!
    
    @IBOutlet weak var userNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
