//
//  GBShippingCompany.swift
//  GbKit
//
//  Created by Ye Gu on 17/11/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBShippingCompanyTrackingMethod : String {
    
    //物流API
    case trackingApi = "TRACKING_API"
    //物流链接
    case trackingLink = "TRACKING_LINK"

}

class GBShippingCompany:GBBaseModel {
    
    //物流公司id
    var shippingCompanyId = ""
    //默认物流名称
    var defaultShippingCompanyName = ""
    //默认物流描述
    var defaultShippingCompanyDesc = ""
    //物流跟踪方式
    var trackingMethod = GBShippingCompanyTrackingMethod.trackingLink
    //跟踪链接
    var trackingLink = ""
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
        
    }
    
    
    
}
