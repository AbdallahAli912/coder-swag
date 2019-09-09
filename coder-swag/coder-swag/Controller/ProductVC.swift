//
//  ProductVC.swift
//  coder-swag
//
//  Created by Abdallah Ali on 9/9/19.
//  Copyright © 2019 Abdallah Ali. All rights reserved.
//

import UIKit

class ProductVC: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource {
    

    @IBOutlet weak var productCollectionView : UICollectionView!
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
    }
    
    func  initProducts(category : Category) {
       products = DataService.instance.getProducts(forCtegoryTitle: category.title)
       navigationItem.title = category.title
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
                cell.updateViews(product: product)
             return cell
            
        }else{
            return ProductCell()
        }
        
    }

   

}
