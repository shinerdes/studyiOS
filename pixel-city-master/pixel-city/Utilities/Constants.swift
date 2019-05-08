//
//  Constants.swift
//  pixel-city
//
//  Created by 김영석 on 2018. 10. 3..
//  Copyright © 2018년 김영석. All rights reserved.
//

import Foundation

let apiKey = "940c4209e622ef772c46458acbe2e84e"

func flickrUrl(forApikey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
    
}



