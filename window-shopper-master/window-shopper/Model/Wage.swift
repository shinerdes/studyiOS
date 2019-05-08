//
//  Wage.swift
//  window-shopper
//
//  Created by 김영석 on 2018. 9. 3..
//  Copyright © 2018년 김영석. All rights reserved.
//

import Foundation


class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        print("\(Int(round(price / wage)))")
        return Int(round(price / wage))
      //  return Int(ceil(price / wage))
        
    }
}
