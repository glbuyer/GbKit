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
    //默认品牌名称
    var defaultBrandName = ""
    //默认品牌logo
    var defaultBrandLogoImageURLs = [String]()
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
        
    }
    
    
    
}
