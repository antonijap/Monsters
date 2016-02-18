//
//  MonsterImg.swift
//  Monsters
//
//  Created by Antonija Pek on 18/02/16.
//  Copyright © 2016 Antonija Pek. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation() // When View loads, lets play animation
    }
    
    // MARK: Properties
    
    
    
    // MARK: Methods
    
    func playIdleAnimation() {
        
        self.image = UIImage(named: "idle1.png")
        self.animationImages = nil
        
        var arrayOfImages = [UIImage]()
        for num in 1...4 {
            let img = UIImage(named: "idle\(num).png")
            if let img = img {
                arrayOfImages.append(img)
            }
            
        }
        
        self.animationImages = arrayOfImages
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        self.animationImages = nil
        
        var arrayOfImages = [UIImage]()
        for num in 1...5 {
            let img = UIImage(named: "dead\(num).png")
            if let img = img {
                arrayOfImages.append(img)
            }
            
        }
        
        self.animationImages = arrayOfImages
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
}