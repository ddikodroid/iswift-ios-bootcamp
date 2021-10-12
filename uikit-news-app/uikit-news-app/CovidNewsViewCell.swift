//
//  CovidNewsViewCell.swift
//  uikit-news-app
//
//  Created by Ahmad Syarifuddin Randiko on 12/10/21.
//

import UIKit

class CovidNewsViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
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
        containerView.layer.cornerRadius = 8
        containerView.layer.masksToBounds = true
        containerView.layer.borderWidth = 0.75
        containerView.layer.borderColor = UIColor(hex: "DDDDDD").cgColor
    }

}
