//
//  GBOrderItem.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper



class GBOrderItem:GBProductItem {
    
    //订单条目ID
    var orderItemId = ""
    //订单ID
    var orderId = ""
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
