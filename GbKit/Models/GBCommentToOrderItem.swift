//
//  GBCommentToOrderItem.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBCommentToOrderItem:GBComment {
    

    //商品条目
    var orderItem = GBOrderItem()
    
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
