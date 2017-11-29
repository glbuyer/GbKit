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
    
    //子商店logo url 宽度
    var shopBranchImageURLWidthPx:Double = 100
    //子商店logo url 高度
    var shopBranchImageURLHeightPx:Double = 100

    //子商店呈现范围的地图缩放比例上限，对于 ios app
    var shopShowingUpperSpanRateForIos:Double = 0
    //子商店呈现范围的地图缩放比例上限，对于 android app
    var shopShowingUpperSpanRateForAndroid:Double = 0
    
    //子商店呈现范围的地图缩放比例下限，对于 ios app
    var shopShowingLowerSpanRateForIos:Double = 0
    //子商店呈现范围的地图缩放比例下限，对于 android app
    var shopShowingLowerSpanRateForAndroid:Double = 0

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
