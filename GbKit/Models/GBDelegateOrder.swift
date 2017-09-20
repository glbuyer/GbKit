//
//  GBDelegateOrder.swift
//  GbKit
//
//  Created by Ye Gu on 17/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBDelegateOrderStatus : String {
    //等待抢单
    case waitForSnatching = "waiting_for_snatching"
    //等待发货
    case snatched = "snatched"
    //等待买家收货
    case delivered = "delivered"
    //已取消
    case cancelled = "cancelled"
    
    case other = "other"
}


class GBDelegateOrder:GBBaseModel {
    
    //订单ID
    var orderId = ""
    //代理订单ID
    var delegateOrderId = ""
    //代理订单状态
    var delegateOrderStatus = GBDelegateOrderStatus.other
    //代理买手id
    var delegateBuyerId = ""
    //感谢费
    var delegateLocalAppreciationFee:Double = 0
    //设置代发买手时间
    var setDelegateBuyerTime = -1
    //代发订单全集信息
    var delegateOrderFullInfo:GBOrder?
    
    //代发买手
    var delegateBuyer:GBDelegateOrder?
    
    //代发买手 将收款 = 未退款商品代发总价 + 未退款商品运费 + 感谢费
    var localDelegateBuyerShouldReceiveAmount = 0.00
    //代发买手 订单利润 = 
    
    //代发商品总价
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
        
    }
    
    
    
}
