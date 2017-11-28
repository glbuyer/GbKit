//
//  GBSnatchOrder.swift
//  GbKit
//
//  Created by Ye Gu on 22/11/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBSnatchOrderType : String {
    
    //普通订单
    case normalOrder = "NORMAL_ORDER"
    //代发订单
    case delegateOrder = "DELEGATE_ORDER"
    
}

class GBSnatchOrder:GBBaseModel {
    
    //抢单类型
    var snatchOrderType = GBSnatchOrderType.normalOrder
    
    //订单 ID
    var orderId = ""
    
    //代发订单 ID
    var delegateOrderId = ""
    
    //可抢商品总数
    var availableSnatchProductQuantity:Int = 0
    
    //商品条目
    var availableSnatchOrderItems = [GBOrderItem]()
    
    //抢单利润
    var localSnatchOrderProfit:Double = 0
    
    //发货时间要求
    var deliveryTimeRequirementInHours = 48
    
    //订单所属地区
    var orderArea = GBArea()

    
}
