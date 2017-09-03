//
//  GBComment.swift
//  GbKit
//
//  Created by Ye Gu on 3/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBComment:GBBaseModel {
    
    //评论id
    var commentId = ""
    
    //评论内容
    var commentContent = ""
    
    //评论等级
    var commentLevel = 0
    
    //评论图片
    var commentImageURLs = [String]()
    
    //创建用户id
    var createUserId = ""
    
    

    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
