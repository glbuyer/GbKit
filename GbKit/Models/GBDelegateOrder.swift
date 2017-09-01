//
//  GBDelegateOrder.swift
//  GbKit
//
//  Created by Ye Gu on 17/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBDelegateOrder:GBOrder {
    
    //代理订单ID
    var delegateOrderId = ""
    //代理订单状态
    var delegateOrderStatus = ""

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
        
    }
    
    
    
}
