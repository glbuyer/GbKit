//
//  IdInfo.swift
//  glbuyer-ios
//
//  Created by GuYe on 16/10/28.
//  Copyright © 2016年 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper



enum GBIdInfoType : String {
    
    //中国身份证
    case CHINA_ID = "CHINA_ID"
    //驾照
    case DRIVING_LICENSE = "DRIVING_LICENSE"
    //护照
    case POSSPORT = "POSSPORT"
    //其他
    case OTHER = "OTHER"
    
}

class GBIdInfo:GBBaseModel {
    
    //用户ID
    var userId:String = ""
    //名字
    var username = ""
    //证件编号
    var userIdCode = ""
    //证件正面照片
    var userIdFrontImgUrl = ""
    //证件背面照片
    var userIdBackImgUrl = ""
    //证件类型
    var userIdType = GBIdInfoType.CHINA_ID

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        userId <- map["user_id"]
        username <- map["username"]
        userIdCode <- map["user_id_code"]
        userIdFrontImgUrl <- map["user_id_front_img_url"]
        userIdBackImgUrl <- map["user_id_back_img_url"]

        userIdType <- (map["user_id_type"],EnumTransform<GBIdInfoType>())

        
    }

    
}
