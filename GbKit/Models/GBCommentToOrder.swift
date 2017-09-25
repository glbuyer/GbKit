//
//  GBCommentToOrder.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBCommentToOrder:GBBaseModel {
    
    //对于订单评论的 id (并非订单id)
    var commentToOrderId = ""
    
    //订单
    var order = GBOrder()

    //对于商品条目的评价
    var commentToOrderItems:[GBCommentToOrderItem]?
    
    //对于买手的评价
    var commentToBuyer:GBCommentToBuyer?
    
    //买家
    var customer:GBCustomer?

    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
