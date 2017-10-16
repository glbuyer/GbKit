//
//  GBProductOtherSubtype.swift
//  GbKit
//
//  Created by Ye Gu on 16/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBProductOtherSubtype:GBBaseModel {
    
    //子分类名称
    var subtypeName = ""
    //子分类条目描述
    var subtypeItemsDescription = ""

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        

    }
    
}
