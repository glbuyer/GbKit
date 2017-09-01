//
//  GBTag.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBTagType : String {
    case PRODUCT_TAG = "PRODUCT_TAG"
    case OTHER_TAG = "OTHER_TAG"
}

class GBTag:GBBaseModel {
    
    //标签ID
    var tagId = ""
    //默认标签名称
    var defaultTagName = ""
    //默认标签内容
    var defaultTagValue = ""
    //标签类型
    var tagType = GBTagType.OTHER_TAG
    
    
    //标签图片URL
    var tagImageURL = ""
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        tagType <- (map["tag_type"],EnumTransform<GBTagType>())

    }
    
    
    
}
