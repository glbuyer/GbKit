//
//  BaseModel.swift
//  glbuyer-ios
//
//  Created by GuYe on 16/10/18.
//  Copyright © 2016年 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBViewType : String {
    
    //买家端商品主页
    case CUSTOMER_PRODUCT_HOMEPAGE = "CUSTOMER_PRODUCT_HOMEPAGE"
    //买家端地图主页
    case CUSTOMER_MAP_HOMEPAGE = "CUSTOMER_MAP_HOMEPAGE"
    //买家端商品分类主页
    case CUSTOMER_CATEGORY_ROOT = "CUSTOMER_CATEGORY_ROOT"
    //买家端购物车页面
    case CUSTOMER_CART = "CUSTOMER_CART"
    //买家端预订单页面
    case CUSTOMER_PRE_ORDER = "CUSTOMER_PRE_ORDER"
    
    //买家端个人中心
    case CUSTOMER_USER_CENTER = "CUSTOMER_USER_CENTER"
    
    
    //买家端订单中心
    case CUSTOMER_ORDER_CENTER = "CUSTOMER_ORDER_CENTER"
    //买家端订单详情
    case CUSTOMER_ORDER_DETAIL = "CUSTOMER_ORDER_DETAIL"

    case OTHER_VIEW = "OTHER_VIEW"
}

open class GBBaseModel:Mappable{
    
    var createdAt = ""
    var updatedAt = ""

    
    let strToInt = TransformOf<Int, String>(fromJSON: { (value: String?) -> Int? in
        // transform value from String? to Int?
        return Int(value!)
        }, toJSON: { (value: Int?) -> String? in
            // transform value from Int? to String?
            if let value = value {
                return String(value)
            }
            return nil
    })
    
    let intToStr = TransformOf<String,Int >(fromJSON: { (value: Int?) -> String? in
        // transform value from String? to Int?
//        return String(value!)
        
        if let value = value {
            return String(value)
        }
        return nil

        }, toJSON: { (value: String?) -> Int? in
            // transform value from Int? to String?
            if let value = value {
                return Int(value)
            }
            return nil
    })
    
    
    let microSecToSec = TransformOf<Double,Double >(fromJSON: { (value: Double?) -> Double? in
        // transform value from String? to Int?
        
        
        
        return Double(value! / 1000.0)
        }, toJSON: { (value: Double?) -> Double? in
            // transform value from Int? to String?
            if let value = value {
                return Double(value * 1000)
            }
            return nil
    })
    
    
    required public init?(map: Map) {
        
    }
    
    required public init?() {
        
    }
    
    // Mappable
    open func mapping(map: Map) {
        
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        
        
    }
    
}
