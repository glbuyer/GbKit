//
//  GBBuyersWithMap.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBBuyersWithMap:GBBaseModel {
    
    //买手信息
    var buyers = [GBBuyer]()
    
    //地图信息
    var mapInfo = GBMap()
        
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
