//
//  ProductSubtypeItem.swift
//  glbuyer-ios
//
//  Created by Ye Gu on 19/12/16.
//  Copyright © 2016 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBProductSubtypeItem:GBBaseModel {
    
    //分类ID
    var subtypeId = ""
    //分类条目ID
    var subtypeItemId = ""
    //分类条目名称
    var defaultSubtypeItemName = ""
    //分类图片
    var subtypeItemImageURL = ""
        
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        

        
    }
    
}
