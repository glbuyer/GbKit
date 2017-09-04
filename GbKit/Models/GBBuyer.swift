//
//  GBBuyer.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

class GBBuyer:GBCustomer {
    
    //作为买手头像
    var asBuyerProfileImageURL = ""
    
    //销售数额
    var salesAmount = 0
    //买手保证金
    var asBuyerDeposit:Double = 0.00
    
    //作为时尚买手销售额
    var fashionBuyerSaleAmount:Double = 0.00
    //作为生活买手销售额
    var lifeBuyerSaleAmount:Double = 0.00
    //作为健康买手销售额
    var healthBuyerSaleAmount:Double = 0.00
    //作为文娱买手销售额
    var entertainmentBuyerSaleAmount:Double = 0.00

    
    //作为时尚买手评论总数
    var fashionBuyerCommentAmount = 0
    //作为生活买手评论总数
    var lifeBuyerSaleCommentAmount = 0
    //作为健康买手评论总数
    var healthBuyerSaleCommentAmount = 0
    //作为文娱买手评论总数
    var entertainmentBuyerCommentAmount = 0
    
    //作为时尚买手好评总数
    var fashionBuyerGoodCommentAmount = 0
    //作为生活买手好评总数
    var lifeBuyerGoodCommentAmount = 0
    //作为健康买手好评总数
    var healthBuyerGoodCommentAmount = 0
    //作为文娱买手好评总数
    var entertainmentGoodCommentAmount = 0
    

    
    //作为时尚买手等级
    var fashionBuyerRank = 1
    //作为生活买手等级
    var lifeBuyerRank = 1
    //作为健康买手等级
    var healthBuyerRank = 1
    //作为文娱买手等级
    var entertainmentBuyerRank = 1
    
    
    //可抢订单总数
    var availableSnatchCount = 0
    
    //买手等级
    var buyerRank = 1
    
    //好评率 百分比
    var goodRate = 100
    
    //买手分类名称
    var buyerCategoryName = ""
    
    //成功交易订单总数
    var tradingSuccessfullyOrderAmount = 0
    
    
    //小仓库商品总量总数
    var productInRepoOnSaleAmount = 0
    //对于该买手的评论总数
    var commentToBuyerAmount = 0
    
    //注册地
    var registerAreaName = ""
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
