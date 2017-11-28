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
    //订单条目运输
    var orderShippingItems = [GBProductShippingItem]()
    
    //商品所在条目 当地使用价格1
    var localProductPrice1:Double = 0
    //商品所在条目 默认使用价格1
    var defaultProductPrice1:Double = 0
    
    //退款状态显示
    var refundStatusDisplay = ""
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
