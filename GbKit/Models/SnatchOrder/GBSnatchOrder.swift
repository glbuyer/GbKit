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

class GBSnatchOrder:GBDelegateOrder {
    
    //抢单类型
    var snatchOrderType = GBSnatchOrderType.normalOrder
    
    //剩余发货时间显示
    var remainingDeliveryTimeDisplay = ""

    
}
