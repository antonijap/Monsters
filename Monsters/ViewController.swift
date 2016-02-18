//
//  ViewController.swift
//  Monsters
//
//  Created by Antonija Pek on 18/02/16.
//  Copyright © 2016 Antonija Pek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets

    @IBOutlet weak var monsterImg: UIImageView!
    
    
    // MARK: Properties
    
    var arrayOfImages = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for num in 1...4 {
            let img = UIImage(named: "idle\(num).png")
            if let img = img {
                arrayOfImages.append(img)
            }
            
        }
        
        monsterImg.animationImages = arrayOfImages
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
    }

}

