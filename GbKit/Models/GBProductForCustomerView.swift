//
//  GBProductForCustomerView.swift
//  GbKit
//
//  Created by Ye Gu on 6/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBProductForCustomerView:GBProduct {
    
    
    //对商品的最新评价
    var theNewestCommentToProduct:GBCommentToOrderItem?
    //对买手的最新评价
    var theNewestCommentToBuyer:GBCommentToBuyer?
    
    
    //对商品的评价总数
    var commentToProductAmount = 0
    //对买手的评价总数
    var commentToBuyerAmount = 0


    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
        
    }
    
    
    
}
