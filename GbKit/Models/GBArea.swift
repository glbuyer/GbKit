//
//  GBArea.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBArea:GBBaseModel {
    
    //地点ID
    var areaId = ""
    //父地点ID
    var parentAreaId = ""
    
    //默认地点名称
    var defaultAreaName = ""
    //地点图片URL
    var areaImageURL = ""
    
    //位置信息
    var mapInfo = GBMap()
    
    //当地邮费信息
    var localShippingFeePerKg:Double = 0.0
    
    //当地货币单位
    var localCurrenyType = GBCurrencyType.AUD
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
