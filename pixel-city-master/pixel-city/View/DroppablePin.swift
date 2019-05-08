//
//  DroppablePin.swift
//  pixel-city
//
//  Created by 김영석 on 2018. 10. 1..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String){
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
