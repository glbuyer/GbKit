//
//  GBPreOrderSection.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum PreOrderBuyerAssignMethod : String {
    
    //指定买手
    case MANULLY_ASSIGN_BUYER = "MANULLY_ASSIGN_BUYER"
    //一键抢单
    case SNATCH_ORDER_BUYER = "SNATCH_ORDER_BUYER"
    
}

class GBPreOrderSection:GBBaseModel {
    
    //预订单地点属性
    var preOrderArea = GBArea()
    
    //预订单商品条目
    var preOrderProductItems = [GBPreOrderProductItem]()
    
    //人民币计价运费
    var defaultShippingFee = 0
    
    //买家留言
    var customerNote = ""
    
    //买手分配方式
    var assignBuyerMethod = PreOrderBuyerAssignMethod.SNATCH_ORDER_BUYER
    
    //地图信息
    var buyersWithMap = GBBuyersWithMap()
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
