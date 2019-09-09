//
//  ViewController.swift
//  coder-swag
//
//  Created by Abdallah Ali on 9/7/19.
//  Copyright © 2019 Abdallah Ali. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource,UITableViewDelegate {
   
    @IBOutlet weak var categoryTable : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell" ) as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateVies(category: category)
             print("NoneEmpty cell")
            return cell
        }else{
            print("Empty cell")
            return CategoryCell()
           
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
        if let productVC = segue.destination as? ProductVC{
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }
    
}

