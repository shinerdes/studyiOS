//
//  Category.swift
//  coder-swag
//
//  Created by 김영석 on 2018. 9. 3..
//  Copyright © 2018년 김영석. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String!
    private(set) public var imageName: String!
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
    
}
