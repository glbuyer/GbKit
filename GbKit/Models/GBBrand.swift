//
//  GBBrand.swift
//  GbKit
//
//  Created by Ye Gu on 15/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation

import ObjectMapper


class GBBrand:GBBaseModel {
    
    //品牌ID
    var brandId = ""
    //默认品牌名称
    var defaultBrandName = ""
    
    
    //默认品牌名称
    var brandNameZH = ""
    
    //默认品牌logo
    var defaultBrandLogoURL = ""
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
        
    }
    
    
    
}
