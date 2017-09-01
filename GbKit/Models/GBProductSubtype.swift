//
//  ProductSubtype.swift
//  glbuyer-ios
//
//  Created by Ye Gu on 19/12/16.
//  Copyright © 2016 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBProductSubtype:GBBaseModel {
    
    //商品ID
    var productId = ""
    //分类ID
    var subtypeId = ""
    //分类名称
    var defaultSubtypeName = ""
    //分类条目内容
    var productSubtypeItems:[GBProductSubtypeItem] = []
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
    
        productId <- map["product_id"]
        subtypeId <- map["subtype_id"]
        defaultSubtypeName <- map["default_subtype_name"]
        productSubtypeItems <- map["subtype_items"]

    }
    
}
