//
//  GBProductPackage.swift
//  GbKit
//
//  Created by Ye Gu on 17/11/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBProductPackageType : String {
    
    //原买手打包
    case originalBuyerPacked = "ORIGINAL_BUYER_PACKED"
    //代发买手打包
    case delegateBuyerPacked = "DELEGATE_BUYER_PACKED"
    //等待打包
    case waitForPacking = "WAIT_FOR_PACKING"

    
    
}

class GBProductPackage:GBBaseModel {
    
    //包裹类型
    var packageType = GBProductPackageType.waitForPacking
    
    //物流公司
    var shippingCompany:GBShippingCompany?
    
    //物流单号
    var shippingTrackId = ""
    
    //包裹中商品条目
    var shippingItems = [GBProductShippingItem]()
    
    //包裹内商品总数
    var productQuantityAmountInPackage:Int = 0
    
    //包裹内重量总数
    var productKgAmountInPackage:Double = 0
    
    //所在包裹的包裹重量
    var packageWeightKg:Double = 0
    
    //商品数量重量显示
    var productQuantityKgDisplay = ""
    
    //代发订单单号
    var delegateOrderId = ""
    //代发状态显示
    var delegateStatusDisplay = ""
    
    //包裹图片url
    var packageImageUrl = ""
    
    //最新物流信息
    var theNewestTrackingInfo = ""
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
