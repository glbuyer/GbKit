//
//  Address.swift
//  glbuyer-ios
//
//  Created by GuYe on 16/10/24.
//  Copyright © 2016年 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBAddress:BaseModel {
    
    //地点编号
    var addressId:String = UUID().uuidString
    //用户ID
    var userId:String = ""
    //国家
    var country:String = "中国"
    //省
    var stateProvince:String = ""
    //市
    var city:String = ""
    //区
    var district:String = ""
    //详细地址
    var address:String = ""
    //邮政编码
    var zipcode:String = ""
    //电话
    var tel:String = ""
    //手机
    var mobile:String = ""
    //收货人
    var receviverName:String = ""
    //最佳送货时间
    var bestTime:String = ""
    //收货人身份信息
    var idInfo = GBIdInfo()
    //是否为默认地址
    var setAsDefault = false

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    

    
}
