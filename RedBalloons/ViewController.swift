//
//  ViewController.swift
//  RedBalloons
//
//  Created by Avni Uysal on 26/11/14.
//  Copyright (c) 2014 Avni Uysal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgViewBackground: UIImageView!
    @IBOutlet weak var lblMain: UILabel!
    
    var currentIndex:Int = 0
    var balloonsArray:[Balloon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for var i = 1; i < 100; i++ {
            var balloon = Balloon()
            balloon.number = i
            balloon.image = UIImage(named: balloon.setImage())
            balloonsArray.append(balloon)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNext(sender: UIBarButtonItem) {
        var balloon = balloonsArray[currentIndex]

        self.imgViewBackground.image = balloon.image
        self.lblMain.text = "\(balloon.number) balloons"
        currentIndex++
    }

}

