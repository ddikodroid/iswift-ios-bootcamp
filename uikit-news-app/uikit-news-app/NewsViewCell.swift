//
//  NewsViewCell.swift
//  uikit-news-app
//
//  Created by Ahmad Syarifuddin Randiko on 12/10/21.
//

import UIKit

class NewsViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var topCon: NSLayoutConstraint!
    @IBOutlet weak var bottomCon: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(){
        newsImage.layer.cornerRadius = 8
        newsImage.layer.masksToBounds = true
    }

}
