//
//  businessCell.swift
//  Yelp
//
//  Created by Aziz Alenezi on 2/18/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class businessCell: UITableViewCell {
    
    
    @IBOutlet weak var thumbimageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var ratingimageView: UIImageView!
    
    @IBOutlet weak var reviewsCountLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            thumbimageView.setImageWith(business.imageURL!)
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            reviewsCountLabel.text = "\(business.reviewCount!)Reviews"
            ratingimageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
            
        }
        
    
    }
    
            
    
    
        override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
            thumbimageView.layer.cornerRadius = 3
            thumbimageView.clipsToBounds = true
            nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
            
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

