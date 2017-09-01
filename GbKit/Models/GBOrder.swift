//
//  GBOrder.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBOrderDiscountMethod : String {
    
    //无优惠
    case NO_PROMOTION = "NO_PROMOTION"
    //通用礼品卡
    case GIFT_CARD = "GIFT_CARD"
    //通用优惠券
    case COUPON = "COUPON"
    //通用推广币
    case PROMOTION_COIN = "PROMOTION_COIN"
    
}
enum GBOrderBuyerAssignMethod : String {
    
    //指定买手
    case MANULLY_ASSIGN_BUYER = "MANULLY_ASSIGN_BUYER"
    //一键抢单
    case SNATCH_ORDER_BUYER = "SNATCH_ORDER_BUYER"
    
}
enum GBOrderStatus : String {
    
    //等待付款
    case WAIT_FOR_PAYMENT = "WAIT_FOR_PAYMENT"
    //等待发货
    case WAIT_FOR_DELIVERY = "WAIT_FOR_DELIVERY"
    //等待确认收货
    case WAIT_FOR_CONFIRM_RECEIVING = "WAIT_FOR_CONFIRM_RECEIVING"
    //等待双方评价
    case WAIT_FOR_BOTH_COMMENT = "WAIT_FOR_BOTH_COMMENT"
    //等待买家评价
    case WAIT_FOR_CUSTOMER_COMMENT = "WAIT_FOR_CUSTOMER_COMMENT"
    //等待买家评价
    case WAIT_FOR_BUYER_COMMENT = "WAIT_FOR_BUYER_COMMENT"
    //订单未完成而关闭
    case CLOSE_NOT_FINISH = "CLOSE_NOT_FINISH"
    //订单完成而关闭
    case CLOSE_FINISH = "CLOSE_FINISH"

}

enum GBCustomerOrderOperations : String {
    
    //付款
    case TO_PAY_ORDER = "TO_PAY_ORDER"
    //查看物流
    case TO_VIEW_SHIPPING_INFO = "TO_VIEW_SHIPPING_INFO"
    
}

class GBOrder:GBBaseModel {
    
    //订单ID
    var orderId = ""
    
    //买家
    var customer = GBCustomer()
    //原始买手
    var buyer:GBBuyer?
    //代发买手
    var delegateBuyer:GBDelegateBuyer?
    
    
    //买家留言
    var customerNote = ""
    
    //送货地址
    var address = GBAddress()

    //商品总价
    var defaultProductAmount = 0.00
    var localProductAmount = 0.00
    
    //运费总价
    var defaultShippingFeeAmount = 0.00
    var localShippingFeeAmount = 0.00

    //订单总价
    var defaultOrderAmount = 0.00
    var localOrderAmount = 0.00

    
    //买家原实付款
    var defaultCustomerInitialPayAmount = 0.00
    var localCustomerInitialPayAmount = 0.00

    
    //退款成功总金额
    var defaultRefundAmount = 0.00
    
    
    //买家去除退款后实付款
    var defaultCustomerPayAmountExcludeRefundAmount = 0.00
    var localCustomerPayAmountExcludeRefundAmount = 0.00

    
    //买家优惠方式
    var customerDiscountMethod = GBOrderDiscountMethod.NO_PROMOTION
    //买家优惠激活码
    var customerDiscountActivationCode = ""
    //买家优惠数额
    var defaultCustomerDiscountAmount = 0.00
    
    //买手优惠方式
    var buyerDiscountMethod = GBOrderDiscountMethod.NO_PROMOTION
    //买手优惠激活码
    var buyerDiscountActivationCode = ""
    //买手优惠数额
    var defaultBuyerDiscountAmount = 0.00


    
    //订单创建时间
    var createTime = ""
    //订单支付时间
    var payTime = ""
    //订单设置买手时间
    var setBuyerTime = ""
    //订单被买手抢时间
    var snatchedTime = ""
    //订单发货时间
    var deliveredTime = ""
    //订单确认收货时间
    var confirmReceivingTime = ""
    //系统订单确认收货时间
    var systemConfirmReceivingTime = ""
    
    //订单取消时间
    var orderCancelTime = ""
    //订单关闭时间
    var orderCloseTime = ""
    
    
    
    //订单标签
    var orderTags = [GBTag]()
    //订单条目
    var orderItems = [GBOrderItem]()
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
