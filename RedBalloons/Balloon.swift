//
//  Balloon.swift
//  RedBalloons
//
//  Created by Avni Uysal on 26/11/14.
//  Copyright (c) 2014 Avni Uysal. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    var number = 0
    var image = UIImage(named:"")
    var imagesArray = ["RedBalloon1.jpg", "RedBalloon2.jpg","RedBalloon3.jpg","RedBalloon4.jpg"]
    
    func setImage() -> NSString {
        let randomIndex = Int(arc4random_uniform(UInt32(4)))
        return imagesArray[randomIndex]
    }
}
