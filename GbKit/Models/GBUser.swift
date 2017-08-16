//
//  GBUser.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBUser:BaseModel {
    
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

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
