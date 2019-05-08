//
//  CategoryCellTableViewCell.swift
//  coder-swag
//
//  Created by 김영석 on 2018. 9. 3..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    

}
