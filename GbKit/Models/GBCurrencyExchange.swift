//
//  GBCurrencyExchange.swift
//  GbKit
//
//  Created by Ye Gu on 1/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBCurrencyType : String {
    
    //澳元
    case AUD = "AUD"
    //人民币
    case CNY = "CNY"
    //美元
    case USD = "USD"
    //日元
    case JPY = "JPY"
    
}

class GBCurrencyExchange:GBBaseModel {
    

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
