//
//  JsonParser.swift
//  DesafioMobile
//
//  Created by Diego Cichello on 4/26/17.
//  Copyright © 2017 DiegoCo. All rights reserved.
//

import Foundation

class JsonParser {
    
    static func parsePeopleFromJson() -> [Person] {

        let path = Bundle.main.path(forResource: "people", ofType: "json")!

        let jsonData = try! NSData(contentsOfFile: path, options: NSData.ReadingOptions.mappedIfSafe)

        let jsonResult: NSArray = try! JSONSerialization.jsonObject(with: jsonData as Data, options: JSONSerialization.ReadingOptions.mutableContainers) as! NSArray

        var people = [Person]()
        //BUG FIX
        var peopleIds = [String]()

        for p in jsonResult {
            let person = Person(json: p as! [String : AnyObject])
            if peopleIds.contains(person.id) {
                continue
            }
            peopleIds.append(person.id)
            people.append(person)
        }

        return people
    }
}
