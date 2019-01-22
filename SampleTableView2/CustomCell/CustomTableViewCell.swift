//
//  CustomTableViewCell.swift
//  SampleTableView2
//
//  Created by 原田摩利奈 on 2019/01/21.
//  Copyright © 2019 原田摩利奈. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var pictureImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setImage(imageData: UIImage) {
        pictureImage.image = imageData
    }
    
    func setText(text: String) {
        nameLabel.text = text
        
    }
    
}
