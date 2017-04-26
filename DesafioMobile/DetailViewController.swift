//
//  DetailViewController.swift
//  DesafioMobile
//
//  Created by Diego Cichello on 4/26/17.
//  Copyright © 2017 DiegoCo. All rights reserved.
//

import Foundation

import UIKit

class DetailViewController: UIViewController {

    var person: Person!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.downloadedFrom(url: URL(string: person.image)!)
        nameLabel.text = person.name
        birthdayLabel.text = person.birthday.convertDateFromIso()
        bioLabel.text = person.bio
    }

}

