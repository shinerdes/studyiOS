//
//  ViewController.swift
//  TestJSONParse
//
//  Created by 김영석 on 30/05/2019.
//  Copyright © 2019 김영석. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var persons = [String : Any]()
    var nameArr = [String]()
    var ageArr = [String]()
    var employedArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "person", ofType: "json")
        if let data = try? String(contentsOfFile: path!).data(using: .utf8){
            let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [String : Any]
            print(json)
            persons = json
        }
        
        if let person = persons["person"] as? [[String: Any]]{
            for personIndex in person {
                nameArr.append(personIndex["name"] as! String)
                ageArr.append(personIndex["age"] as! String)
                employedArr.append(personIndex["employed"] as! String)
            }
        }
    }
}
