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
    
    //预览代发数据
    case preView = "PRE_VIEW"
    //等待抢单
    case waitForSnatching = "WAIT_FOR_SNATCHING"
    //等待发货
    case snatched = "SNATCHED"
    //等待买家收货
    case delivered = "DELIVERED"
    //已取消
    case cancelled = "CANCELLED"
    
    case unknown = "UNKNOWN"
}


class GBDelegateOrder:GBOrder {
    
    //代理订单ID
    var delegateOrderId = ""
    
    //代发订单显示标题
    var delegateOrderTitle = ""
    //代发订单图片
    var delegateOrderImageUrl = ""
    //商品合计代发价格 = sum ( 商品代发价格 * 代发商品数量 )
    var localDelegateProductAmount:Double = 0
    //代发运费 ＝ 代发商品总重量 ＊ 代发买手计算重量（不足一公斤，按一公斤计算）
    var localDelegateShippingFee:Double = 0
    //合计价格 = 商品合计代发价格 + 代发运费 + 感谢费
    var localDelegateOrderAmount:Double = 0
    //感谢费 <= 订单实收款－代发价格－代发运费
    var delegateLocalAppreciationFee:Double = 0
    //代发订单所属地
    var deleateOrderArea = GBArea()
    //代发订单状态
    var delegateOrderStatus = GBDelegateOrderStatus.other
    //代发订单状态显示
    var delegateOrderStatusDisplay = ""
    //接单买手对于当前订单可操作内容
    var originalBuyerOperations = [String]()
    //该代发订单最大可使用感谢费
    var delegateLocalAppreciationFeeMaximumLimit:Double = 0
    //允许抢单的代发买手
    var allowToDelegateBuyers = [GBBuyer]()
    
    
    
    //代理买手id
    var delegateBuyerId = ""
    //代发买手
    var delegateBuyer:GBDelegateBuyer?
    

    

    //设置代发买手时间
    var setDelegateBuyerTime = -1
    
    //代发商品条目
    var delegateOrderItems = [GBOrderItem]()
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
        
    }
    
    
    
}
