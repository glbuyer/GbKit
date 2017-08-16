//
//  GBArea.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBArea:BaseModel {
    
    //地点ID
    var areaId = ""
    //父地点ID
    var parentAreaId = ""
    //默认地点名称
    var defaultAreaName = ""
    //地点图片URL
    var areaImageURL = ""
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
