//
//  Person.swift
//  DesafioMobile
//
//  Created by Diego Cichello on 4/25/17.
//  Copyright © 2017 DiegoCo. All rights reserved.
//

import Foundation


class Person : NSObject {

    private(set) dynamic var id:String = "";
    private(set) dynamic var name:String = "";
    private(set) dynamic var image:String = "";
    private(set) dynamic var birthday:String = "";
    private(set) dynamic var bio:String? = "";

    convenience init (json: [String:AnyObject]) {

        self.init()

        id = json["id"] as! String
        name = json["name"] as! String
        image = json["image"] as! String
        birthday = json["birthday"] as! String
        if let bio = json["bio"] {
            self.bio = bio as? String
        }
    }
}
