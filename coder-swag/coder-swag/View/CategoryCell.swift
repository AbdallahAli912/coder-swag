//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Abdallah Ali on 9/7/19.
//  Copyright © 2019 Abdallah Ali. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    

    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var cellTitle : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateVies(category : Category){
        categoryImage.image = UIImage(named: category.imageName)
        cellTitle.text = category.title
    }

}
