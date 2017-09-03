//
//  GBOrderOperation.swift
//  GbKit
//
//  Created by Ye Gu on 3/9/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBOrderOperationType : String {
    
    //去付款
    case CUSTOMER_TO_PAY = "to_pay"
    //去提醒发货
    case CUSTOMER_TO_REMIND_DELIVER = "to_remind_deliver"
    //去确认收货
    case CUSTOMER_TO_CONFIRM_RECEIVING = "to_confirm_receiving"
    //查看评价
    case CUSTOMER_TO_VIEW_COMMENT = "to_view_comment_by_customer"
    //立即评价
    case CUSTOMER_TO_COMMENT = "to_comment_by_customer"
    //延长收货
    case CUSTOMER_TO_EXTEND_CONFIRMING_RECEIVING = "to_extend_confirming_by_customer"
    //投诉维权
    case CUSTOMER_TO_COMPLAINT = "to_complaint"
    //取消订单
    case CUSTOMER_TO_CANCEL_ORDER = "to_cancel"
    //上传身份证
    case CUSTOMER_TO_UPLOAD_ID = "to_upload_id"
    //去查看物流
    case CUSTOMER_TO_CHECK_SHIPPING = "to_check_shipping"
    //去删除订单
    case CUSTOMER_TO_DELETE_ORDER = "to_delete_by_customer"
    
    

    case OTHER_OPERATION = "OTHER_OPERATION"
}

class GBOrderOperation:GBBaseModel {
    

    //操作类型
    var operationType = ""
    //操作描述文本
    var operationText = ""

    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        
    }
    
    
    
}
