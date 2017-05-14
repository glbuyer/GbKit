//
//  GbStringExtension.swift
//  GbKit
//
//  Created by Ye Gu on 13/5/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    func toInt() -> Int {
        
        return Int(self)!
        
    }
    
    func toURL() -> URL {
        
        return URL(string: self)!
        
    }
    
    func toUIColor() -> UIColor {
        
        return UIColor(string: self)
        
    }
    
}
