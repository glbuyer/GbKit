//
//  GBProductShippingItem.swift
//  GbKit
//
//  Created by Ye Gu on 17/11/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper



class GBProductShippingItem:GBOrderItem {
    
    //订单邮件条目ID
    var orderItemForShippingId = ""

    //物流公司id
    var shippingCompanyId = ""
    
    //物流单号
    var shippingTrackId = ""
    
    //所在包裹的包裹重量
    var packageWeightKg:Double = 0
    
    
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}

