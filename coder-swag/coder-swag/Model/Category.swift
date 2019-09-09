//
//  Category.swift
//  coder-swag
//
//  Created by Abdallah Ali on 9/7/19.
//  Copyright © 2019 Abdallah Ali. All rights reserved.
//

import Foundation


struct Category {
    private(set) public var title : String
    private(set) public var imageName : String
    
    init(title : String , imageName : String) {
        self.title = title
        self.imageName =  imageName
    }
}
