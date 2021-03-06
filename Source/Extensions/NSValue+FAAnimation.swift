//
//  NSValue+FAAnimation.swift
//  FlightAnimator
//
//  Created by Anton Doudarev on 2/24/16.
//  Copyright © 2016 Anton Doudarev. All rights reserved.
//

import Foundation
import UIKit

extension NSValue
{
   final public func typedValue() -> Any?
   {
        let type = String(cString: self.objCType)
    
        if type.hasPrefix("{CGPoint")
        {
            return self.cgPointValue
        }
        else if type.hasPrefix("{CGSize")
        {
            return self.cgSizeValue
        }
        else if type.hasPrefix("{CGRect")
        {
            return self.cgRectValue
        }
        else if type.hasPrefix("{CATransform3D")
        {
            return self.caTransform3DValue
        }
        else if type.hasPrefix("{CGAffineTransform")
        {
            return self.cgAffineTransformValue
        }
        else if let numberSelf = self as? NSNumber
        {
            return CGFloat(numberSelf.floatValue)
        }
        else
        {
            return self
        }
    }
}
