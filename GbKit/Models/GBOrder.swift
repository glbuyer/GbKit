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

enum GBOrderDelegateBuyerAssignMethod : String {
    
    //指定代发买手
    case MANULLY_ASSIGN_DELEGATE_BUYER = "MANULLY_ASSIGN_DELEGATE_BUYER"
    //代发一键抢单
    case SNATCH_ORDER_DELEGATE_BUYER = "SNATCH_ORDER_DELEGATE_BUYER"
    
}


enum GBOrderStatus : String {
    
    //等待付款
    case WAIT_FOR_PAYMENT = "WAIT_FOR_PAYMENT"
    //等待抢单
    case WAIT_FOR_SNATCH = "WAIT_FOR_SNATCH"
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

enum GBBuyerOrderOperations : String {
    
    //付款
    case TO_PAY_ORDER = "TO_PAY_ORDER"
    //查看物流
    case TO_VIEW_SHIPPING_INFO = "TO_VIEW_SHIPPING_INFO"
    
}

enum GBDelegateBuyerOrderOperations : String {
    
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
    //订单所属地区
    var orderArea = GBArea()
    
    

    //商品总价(原始) = sum ( 商品单价 * 商品数量 )
    var defaultProductAmount = 0.00
    var localProductAmount = 0.00
    
    //参与运费计算订单总重量
    var orderShippingFactorSum = 0
    //参与运费计算未退款条目总重量
    var notRefundOrderShippingFactorSum = 0
    
    
    //运费总价(原始) = 订单所属地点.运费单价 * 商品参与运费计算总重量
    var defaultShippingFeeAmount = 0.00
    var localShippingFeeAmount = 0.00

    //订单总价(原始) = 商品总价(原始) + 运费总价(原始)
    var defaultOrderAmount = 0.00
    var localOrderAmount = 0.00
    
    //未退款运费 运费总价 = 订单所属地点.运费单价 * 参与运费计算未退款条目总重量
    var defaultNotRefundShippingFeeAmount = 0.00
    var localNotRefundShippingFeeAmount = 0.00
    
    
    //买家优惠数额(原始)
    var defaultCustomerDiscountAmount = 0.00
    var localCustomerDiscountAmount = 0.00
    //买手优惠数额(原始)
    var defaultBuyerDiscountAmount = 0.00
    var localBuyerDiscountAmount = 0.00
    

    //买家原实付款(原始) = 订单总价(原始) - 买家优惠数额(原始) - 买手优惠数额(原始)
    var defaultCustomerInitialPayAmount = 0.00
    var localCustomerInitialPayAmount = 0.00
    
    //买家视角买家 优惠 退款总额
    var defaultCustomerViewRefundAmountForCustomer = 0.00
    var localCustomerViewRefundAmountForCustomer = 0.00
    
    //买手视角买家 优惠 退款总额 = 各个成功申请退款的总额
    var defaultBuyerViewRefundAmountForCustomer = 0.00
    var localBuyerViewRefundAmountForCustomer = 0.00

    //对于买家退款总额 = 申请退款成功商品金额总额 (若是取消订单，则是 买家原实付款(原始) )
    var defaultRefundAmountForCustomer = 0.00
    var localRefundAmountForCustomer = 0.00
    
    //对于买手退款总额 = 对于买家退款总额 + 买手视角买家优惠退款总额
    var defaultRefundAmountForBuyer = 0.00
    var localRefundAmountForBuyer = 0.00
    
    //买家去除退款后实付款 = 买家原实付款(原始) - 对于买家退款总额
    var defaultCustomerPayAmountExcludeRefundAmount = 0.00
    var localCustomerPayAmountExcludeRefundAmount = 0.00

    //买手原实收款(原始) = 订单总价(原始) - 买手优惠数额(原始)
    var defaultBuyerOriginalShouldReceiveAmount = 0.00
    var localBuyerOriginalShouldReceiveAmount = 0.00

    //买手最终实收款 = 买手原实收款(原始) - 对于买家退款总额 - 买手视角买家 优惠 退款总额
    var defaultBuyerShouldReceiveAmount = 0.00
    var localBuyerShouldReceiveAmount = 0.00
    
    //原始订单成本 = 所有原商品条目成本 + 运费总价(原始)
    var defaultOriginalOrderCostAmount = 0.00
    var localOriginalOrderCostAmount = 0.00

    //未退款商品订单成本 = 未退款商品商品条目成本 + 未退款商品运费总价
    var defaultNotRefundOrderCostAmount = 0.00
    var localNotRefundOrderCostAmount = 0.00


    //订单利润(原始) = 买手实收款(原始) - 原始订单成本
    var defaultOriginalOrderProfit = 0.00
    var localOriginalOrderProfit = 0.00

    //未退款商品订单利润 = 买手最终实收款 - 未退款商品订单成本
    var defaultNotRefundOrderProfit = 0.00
    var localNotRefundOrderProfit = 0.00
    
    
    //买家优惠方式
    var customerDiscountMethod = GBOrderDiscountMethod.NO_PROMOTION
    //买家优惠激活码
    var customerDiscountActivationCode = ""
    
    //买手优惠方式
    var buyerDiscountMethod = GBOrderDiscountMethod.NO_PROMOTION
    //买手优惠激活码
    var buyerDiscountActivationCode = ""
 
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
    
    //订单取消原因
    var orderCancelReason = ""
    //订单关闭原因
    var orderCloseReason = ""
    
    
    
    //订单标签
    var orderTags = [GBTag]()

    //订单条目
    var orderItems = [GBOrderItem]()
    //未成功退款的订单条目
    var notRefundSuccessfullyOrderItems = [GBOrderItem]()
    
    //名义订单总重量
    var orderSumKg = 0
    //名义未退款条目总重量
    var notRefundOrderSumKg = 0
    

    
    //商品总数量
    var productQuantity = 0
    //未退款商品总数量
    var notRefundProductQuantity = 0
    
    //条目物流
    var shippingItems = [String]()
    
    //订单支付信息
    var orderPaymentInfo = ""
    
    
    //订单当前状态标题
    var statusTitle = ""
    //订单当前状态副标题
    var statusSubTitle = ""
    //订单中心 当前状态指示
    var orderCenterStatusHint = ""

    var nextStatusTime = -1
    
    

    
    
    
    
    //订单状态
    var orderStatus = GBOrderStatus.WAIT_FOR_PAYMENT
    //订单买手指配类型
    var orderBuyerAssignMethod = GBOrderBuyerAssignMethod.SNATCH_ORDER_BUYER
    //订单代发买手指配类型
    var orderDelegateBuyerAssignMethod = GBOrderDelegateBuyerAssignMethod.SNATCH_ORDER_DELEGATE_BUYER
    
    
    

    //代发订单集合
    var delegateOrders = [GBDelegateOrder]()
    
  
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
