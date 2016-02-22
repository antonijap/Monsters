//
//  DragImg.swift
//  Monsters
//
//  Created by Antonija Pek on 18/02/16.
//  Copyright © 2016 Antonija Pek. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: Properties
    
    var originalPosition: CGPoint!
    var dropTarget: UIView?
    
    // MARK: Methods
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPosition = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.locationInView(self.superview)
            self.center = CGPointMake(position.x, position.y)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {   
        if let touch = touches.first, let target = dropTarget {
            let position = touch.locationInView(self.superview)
            
            if CGRectContainsPoint(target.frame, position) {
                NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "droppedOnTarget", object: nil))
            }
        }
        
        self.center = originalPosition
    }
}