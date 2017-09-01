//
//  GBProductItem.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBProductItem:GBBaseModel {
    
    //商品
    var product = GBProduct()
    
    //数量
    var productQuantity = 0
    
    //子分类显示
    var productSubtypesDisplay = ""

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
