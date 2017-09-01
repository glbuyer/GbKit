//
//  GBMap.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBMap:GBBaseModel {
    
    //地图中心点 纬度
    var mapCenterLatitude:Double = 0
    //地图中心点 经度
    var mapCenterLongitude:Double = 0


    //地图边界
    var mapBoundary = [Double]()
    
    //默认地图缩放比例 for iOS
    var defaultMapSpanRateForIOS:Double = 0
    //默认地图缩放比例 for Android
    var defaultMapSpanRateForAndroid:Double = 0
    
    //是否限制地图边界
    var ifLimitMapBoundary = false
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
