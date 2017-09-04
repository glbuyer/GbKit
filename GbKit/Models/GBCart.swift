//
//  GBCart.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBCart:GBBaseModel {
    
    //购物车条目
    var shoppingCartItems = [GBCartItem]()
    
    //买手信息
    var buyer:GBBuyer?
    
    //地区信息
    var area:GBArea?
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        shoppingCartItems <- map["shopping_cart_items"]
        buyer <- map["buyer"]
        area <- map["area"]

        
    }
    
    
    
}
