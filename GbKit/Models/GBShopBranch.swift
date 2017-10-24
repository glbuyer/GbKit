//
//  GBShopBranch.swift
//  GbKit
//
//  Created by Ye Gu on 20/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
class GBShopBranch:GBShop {
    
    //子商品编号
    var shopBranchId = ""
    
    //子商店名称
    var defaultShopBranchName = ""
    
    //子商店所在地点 id
    var areaId = ""
    
    //子商店所在地点
    var area = GBArea()
    
    //子商店logo url
    var shopBranchImageURL = ""
    
    //子商店描述
    var shopBranchDescription = ""
    
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
