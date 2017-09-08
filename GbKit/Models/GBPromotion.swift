//
//  GBPromotion.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBPromotionType : String {
    
    //无优惠
    case NO_PROMOTION = "NO_PROMOTION"
    //通用礼品卡
    case GIFT_CARD = "GIFT_CARD"
    //通用优惠券
    case COUPON = "COUPON"
    //通用推广币
    case PROMOTION_COIN = "PROMOTION_COIN"
    
}

enum GBCustomerDiscountMethod : String {
    
    //无优惠
    case NO_PROMOTION = "no-promotion"
    //通用礼品卡
    case GIFT_CARD = "gift-card"
    //通用优惠券
    case COUPON = "coupon"
    //通用推广币
    case PROMOTION_COIN = "promotion-coin"
    
}

enum GBCustomerDiscountName : String {
    
    //无优惠
    case noPromotion = "不使用优惠"
    //通用礼品卡
    case giftCard = "礼品卡"
    //通用优惠券
    case coupon = "优惠券"
    //通用推广币
    case promotionCoin = "推广币"
    
}

class GBPromotion:GBBaseModel {
    
    //优惠方式
    var asBuyerProfileImageURL = GBPromotionType.NO_PROMOTION
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
