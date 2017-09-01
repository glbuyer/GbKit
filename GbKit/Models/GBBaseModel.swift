//
//  BaseModel.swift
//  glbuyer-ios
//
//  Created by GuYe on 16/10/18.
//  Copyright © 2016年 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper



open class GBBaseModel:Mappable{
    
    var createdAt = ""
    var updatedAt = ""

    
    let strToInt = TransformOf<Int, String>(fromJSON: { (value: String?) -> Int? in
        // transform value from String? to Int?
        return Int(value!)
        }, toJSON: { (value: Int?) -> String? in
            // transform value from Int? to String?
            if let value = value {
                return String(value)
            }
            return nil
    })
    
    let intToStr = TransformOf<String,Int >(fromJSON: { (value: Int?) -> String? in
        // transform value from String? to Int?
//        return String(value!)
        
        if let value = value {
            return String(value)
        }
        return nil

        }, toJSON: { (value: String?) -> Int? in
            // transform value from Int? to String?
            if let value = value {
                return Int(value)
            }
            return nil
    })
    
    
    let microSecToSec = TransformOf<Double,Double >(fromJSON: { (value: Double?) -> Double? in
        // transform value from String? to Int?
        
        
        
        return Double(value! / 1000.0)
        }, toJSON: { (value: Double?) -> Double? in
            // transform value from Int? to String?
            if let value = value {
                return Double(value * 1000)
            }
            return nil
    })
    
    
    required public init?(map: Map) {
        
    }
    
    required public init?() {
        
    }
    
    // Mappable
    open func mapping(map: Map) {
        
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        
        
    }
    
}
