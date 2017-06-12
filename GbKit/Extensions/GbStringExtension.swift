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
    
    public func toInt() -> Int {
        
        return Int(self)!
        
    }
    
    public func toURL() -> URL {
        
        return URL(string: self)!
        
    }
    
    public func toUIColor() -> UIColor {
        
        return UIColor(string: self)
        
    }
    
    func toUrlEncode() -> String {
        
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
    }
    
}
