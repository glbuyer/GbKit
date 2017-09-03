//
//  GBUser.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBUserGenderType : String {
    
    //男
    case MALE = "MALE"
    //女
    case FEMALE = "FEMALE"
    //未知
    case UNKNOWN = "UNKNOWN"

    
}

enum GBUserOnlineStatus : String {
    
    //用户上线
    case ONLINE = "ONLINE"
    //用户下线
    case OFFLINE = "OFFLINE"
    //未知
    case UNKNOWN = "UNKNOWN"
    
    
}




class GBUser:GBBaseModel {
    
    //用户ID
    var userId = ""
    //默认用户头像
    var defaultUserProfileImageURL = ""
    //用户显示姓名
    var displayName = ""
    //用户绑定手机号
    var bindingPhone = ""
    //绑定用户名
    var bindingUsername = ""
    //绑定聊天id
    var bindingChatId = ""
    //是否是买手
    var isBuyer = false
    
    //用户性别
    var userGenderType = GBUserGenderType.UNKNOWN

    //最近位置纬度
    var lastLatitude:Double?
    //最近位置纬度
    var lastLongitude:Double?
    //上次标记在线状态
    var lastMarkOnlineStatus = GBUserOnlineStatus.UNKNOWN
    
    
    //推广码
    var promotionCode = ""
    
    //地点
    var lastArea = GBArea()

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
