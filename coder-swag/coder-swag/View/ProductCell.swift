//
//  ProductCell.swift
//  coder-swag
//
//  Created by Abdallah Ali on 9/9/19.
//  Copyright © 2019 Abdallah Ali. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    
    func updateViews(product : Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
        
    }
}
