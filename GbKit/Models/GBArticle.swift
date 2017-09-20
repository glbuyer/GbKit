//
//  GBArticle.swift
//  GbKit
//
//  Created by Ye Gu on 8/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBDetailDisplayMethod : String {
    //h5 链接
    case htmlLink = "html_link"
    case other = "other"
}

class GBArticle:GBBaseModel {
    
    //文章id
    var articleId = ""
    //文章 标题
    var title = ""
    //文章 缩略图片
    var headImageUrl = ""
    //文章 html 内容
    var htmlContent = ""
    //文章 html 链接
    var htmlLink = ""
    //文章 详情显示方式
    var detailDisplayMethod = GBDetailDisplayMethod.other
    //文章 内容简述
    var contentSummary = ""
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
