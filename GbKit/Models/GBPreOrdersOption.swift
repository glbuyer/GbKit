//
//  GBPreOrdersOption.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBPreOrdersOption:GBBaseModel {
    
    //预订单总价包含运费
    var preOrdersAmountIncludesShippingFee = 0
    
    //买家优惠方式
    var customerDiscountMethod = GBCustomerDiscountMethod.NO_PROMOTION
    //买家优惠金额
    var discountAmount:Double = 0.0
    //买家优惠标记
    var discountValuePromotionSelection = ""
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
