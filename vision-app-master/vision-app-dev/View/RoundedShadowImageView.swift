
//
//  RoundedShadowImageView.swift
//  vision-app-dev
//
//  Created by 김영석 on 2018. 10. 10..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit

class RoundedShadowImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.75
        self.layer.cornerRadius = 15
        
        
        
    }

}
