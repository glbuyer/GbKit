//
//  GBCartItem.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBShoppingCartItemStatus : String {
    //允许结算
    case allowToCheckOut = "ALLOW_TO_CHECK_OUT"
    //失效
    case invalid = "INVALID"
    //未知
    case unknown = "UNKNOWN"
}

class GBCartItem:GBProductItem {
    
    //购物车条目id
    var shoppingCartItemId = ""
    
    //购物车条目状态
    var shoppingCartItemStatus = GBShoppingCartItemStatus.allowToCheckOut
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
