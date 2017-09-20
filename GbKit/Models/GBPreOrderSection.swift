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
    case MANUALLY_ASSIGN_BUYER = "MANUALLY_ASSIGN_BUYER"
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
    
    //默认买手
    var defaultBuyer:GBBuyer?
    
    //地图 与 买手 信息
    var buyersWithMap = GBBuyersWithMap()
    
    //商品参与计算总重量
    var productItemWeightForShippingAmount:Double = 0.00
    
    //商品显示总重量
    var productItemWeightAmount:Double = 0.00
    
    //商品总价 + 对应邮费
    var productsWithShippingAmount:Double = 0.00
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
