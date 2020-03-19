//
//  scaleButtonExtention.swift
//  AVFoundation Test
//
//  Created by HSU, Hong-Wei on 2020/3/16.
//  Copyright © 2020 HSU, Hong-Wei. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    func buttonScales() {
        let buttonScale = CASpringAnimation(keyPath: "transform.scale")
        buttonScale.duration = 0.1
        buttonScale.fromValue = 0.97
        buttonScale.toValue = 1.0
        buttonScale.autoreverses = false
        buttonScale.repeatCount = 0
        buttonScale.initialVelocity = 8
        buttonScale.damping = 0
        
        layer.add(buttonScale, forKey: nil)}

  
        
}
