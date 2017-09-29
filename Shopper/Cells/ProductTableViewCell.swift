//
//  ProductTableViewCell.swift
//  Shopper
//
//  Created by Daniel Teodoro on 28/09/17.
//  Copyright © 2017 Daniel Teodoro. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setProductCell(dictionary: NSDictionary) {
        productNameLabel.text = dictionary.object(forKey: "product") as? String
        productDescriptionLabel.text = dictionary.object(forKey: "answer") as? String
        productImageView.image = UIImage.init(named: (dictionary.object(forKey: "imageUrl") as! String))
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

