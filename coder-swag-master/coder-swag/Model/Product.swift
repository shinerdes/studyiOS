//
//  Product.swift
//  coder-swag
//
//  Created by 김영석 on 2018. 9. 5..
//  Copyright © 2018년 김영석. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }

}
