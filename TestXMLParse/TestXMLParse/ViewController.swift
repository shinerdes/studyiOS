//
//  ViewController.swift
//  TestXMLParse
//
//  Created by 김영석 on 30/05/2019.
//  Copyright © 2019 김영석. All rights reserved.
//

import UIKit

class ViewController: UIViewController,XMLParserDelegate {
    
    var strXMLData:String = ""
    var currentElement:String = ""
    var passData:Bool=false
    var passName:Bool=false
    var parser = XMLParser()
    
    @IBOutlet var lblNameData : UILabel! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url:String="http://api.androidhive.info/pizza/?format=xml"
        let urlToSend: NSURL = NSURL(string: url)!
        // Parse the XML
        parser = XMLParser(contentsOf: urlToSend as URL)!
        parser.delegate = self
        
        let success:Bool = parser.parse()
        
        if success {
            print("parse success!")
            
            print(strXMLData)
            
            lblNameData.text=strXMLData
            
        } else {
            print("parse failure!")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        currentElement=elementName;
        if(elementName=="id" || elementName=="name" || elementName=="cost" || elementName=="description")
        {
            if(elementName=="name"){
                passName=true;
            }
            passData=true;
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        currentElement="";
        if(elementName=="id" || elementName=="name" || elementName=="cost" || elementName=="description")
        {
            if(elementName=="name"){
                passName=false;
            }
            passData=false;
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if(passName){
            strXMLData=strXMLData+"\n\n"+string
        }
        
        if(passData)
        {
            print(string)
        }
    }
    
    private func parser(parser: XMLParser, parseErrorOccurred parseError: NSError) {
        NSLog("failure error: %@", parseError)
    }
}

