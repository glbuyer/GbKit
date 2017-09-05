//
//  GBProductForShop.swift
//  GbKit
//
//  Created by Ye Gu on 5/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBProductForShop:GBShop {
    
    //商品所在商店url
    var productURL = ""
    
    //额外标记信息(用于价格获取时sku区分)
    var extraMarkInfo = ""
    
    //是否与其他商品共享url
    var ifShareURLWithOthers = false

    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
