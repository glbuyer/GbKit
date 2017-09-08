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
    
    //其他
    case OTHER = "OTHER"
    
}

enum GBCurrencySymbol : String {
    
    //澳元
    case AUD = "$"
    //人民币
    case CNY = "￥"
    //美元
    case USD = "$#USD"
    //日元
    case JPY = "￥#JPY"
    
    //其他
    case OTHER = "$#OTHER"
    
}

class GBCurrencyExchange:GBBaseModel {
    
    //主货币单位
    var fromCurrency = GBCurrencyType.OTHER

    //转换后货币单位
    var toCurrency = GBCurrencyType.OTHER
    
    //主货币单位符号
    var fromCurrencySymbol = GBCurrencySymbol.OTHER
    
    //转换后货币单位符号
    var toCurrencySymbol = GBCurrencySymbol.OTHER
    
    
    //汇兑比率
    var rate:Double = 1
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
