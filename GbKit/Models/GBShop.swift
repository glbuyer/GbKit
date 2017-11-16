//
//  GBShop.swift
//  GbKit
//
//  Created by Ye Gu on 5/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBShop:GBBaseModel {
    
    //商品编号
    var shopId = ""
    
    //商店名称
    var defaultShopName = ""
    
    //商店所在地点集合
    var areas = [GBArea]()
    
    //商店logo url
    var shopImageURL = ""
    
    //商店描述
    var shopDescription = ""
    

    //商店主页背景图
    var homepageBackgroundImageUrl = ""
    
    //商店主页 tab bar
    var searchTagTabs = [GBHomepageCell]()

    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
