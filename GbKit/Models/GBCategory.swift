//
//  GBCategory.swift
//  GbKit
//
//  Created by Ye Gu on 15/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation

import ObjectMapper


class GBCategory:GBBaseModel {
    
    //分类ID
    var categoryId = ""
    //父分类ID
    var parentId = ""
    //默认分类名称
    var defaultCategoryName = ""
    
    //分类名称链条
    var defaultCategoryNameChain = ""
    
    //分类ID链条
    var categoryIdChain = ""
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
        
    }
    
    
    
}
