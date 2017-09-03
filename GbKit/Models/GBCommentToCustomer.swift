//
//  GBCommentToCustomer.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBCommentToCustomer:GBComment {
    
    
    //买家
    var buyer = GBCustomer()
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
