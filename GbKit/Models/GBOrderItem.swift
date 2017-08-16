//
//  GBOrderItem.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBOrderItem:BaseModel {
    
    //订单条目ID
    var orderItemId = ""
    //订单ID
    var orderId = ""
    //条目商品
    var product = GBProduct()
    //商品数量
    var productQuantity = 0
    //商品子分类显示
    var productSubtypeDisplay = ""
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
