//
//  GBPreOrders.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBPreOrders:GBBaseModel {
    
    //预订单内容
    var preOrderSections = [GBPreOrderSection]()
    
    //默认地址
    var defaultAddress:GBAddress?
    
    //默认选项 index
    var defaultOptionsIndex = 0
    
    //选项
    var preOrdersOptions = [GBPreOrdersOption]()
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
