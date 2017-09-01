//
//  GBProductExtension.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBProductExtension:GBBaseModel {
    
    //商品ID
    var productId = ""
    //扩展名称
    var extensionName = ""
    //扩展值
    var extensionValue = ""
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
        
    }
    
    
    
}
