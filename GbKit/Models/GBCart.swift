//
//  GBCart.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBShoppingCartGroupType : String {
    //已设置买手
    case setBuyer = "SET_BUYER"
    //未设置买手
    case unsetBuyer = "UNSET_BUYER"
    //失效的商品
    case invalidItems = "INVALID_ITEMS"
}

class GBCart:GBBaseModel {
    
    //购物车条目
    var shoppingCartItems = [GBCartItem]()
    
    //买手信息
    var buyer:GBBuyer?
    
    //地区信息
    var area:GBArea?
    
    //购物车分组类型
    var cartGroupType = GBShoppingCartGroupType.unsetBuyer
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        shoppingCartItems <- map["shopping_cart_items"]
        buyer <- map["buyer"]
        area <- map["area"]

        
    }
    
    
    
}
