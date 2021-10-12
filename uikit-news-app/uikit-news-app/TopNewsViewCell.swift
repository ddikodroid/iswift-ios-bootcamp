//
//  TopNewsViewCell.swift
//  uikit-news-app
//
//  Created by Ahmad Syarifuddin Randiko on 12/10/21.
//

import UIKit

class TopNewsViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var topNewsImage: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var tagLabel: UILabel!
    
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
        topNewsImage.layer.cornerRadius = 8
        topNewsImage.layer.masksToBounds = true
    }
}
