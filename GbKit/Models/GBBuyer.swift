//
//  GBBuyer.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBBuyerBehaviorPermission:String {
    case receiveDelegateOrder = "RECEIVE_DELEGATE_ORDER"
}

class GBBuyer:GBCustomer {
    
    //作为买手头像
    var asBuyerProfileImageURL = ""
    
    //销售数额
    var salesAmount = 0
    //买手保证金 当地货币
    var asBuyerDeposit:Double = 0.00
    //买手保证金缴纳目标 当地货币
    var asBuyerDepositTarget:Double = 200
    
    
    
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
    var lifeBuyerCommentAmount = 0
    //作为健康买手评论总数
    var healthBuyerCommentAmount = 0
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
    
    //买手主页 bar 背景图
    var homepageBackgroundImageUrl = ""
    
    //身份证件类型
    var userIdInfoType = ""
    //身份证件 id
    var userIdInfoNumber = ""
    //买手银行名称
    var userBankName = ""
    //买手银行支付货币类型
    var userBankPaymentCurrencyType = "CNY"
    //买手银行用户名
    var userBankInfoUsername = ""
    //买手银行bsb
    var userBankInfoBsb = ""
    //买手银行账户
    var userBankAccountNumber = ""
    
    //学历
    var userDegree = ""
    //当前职业
    var userCurrentPosition = ""
    //所在地地址
    var userLocalAddress = ""
    //中国地址
    var userChineseAddress = ""
    //签证信息
    var userVisaInfo = ""
    //认证地区
    var registerAreaName = ""
    
    //买手注册地
    var registerAreaIds = [String]()
    
    //买手权限
    var buyerBehaviorPermissions = [GBBuyerBehaviorPermission]()
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
