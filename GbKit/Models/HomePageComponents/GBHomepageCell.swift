//
//  GBHomepageCell.swift
//  GbKit
//
//  Created by Ye Gu on 24/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBHomepageCellKeyType : String {
    //商品id
    case productId = "PRODUCT_ID"
    //商品id 跟随 买手id
    case productIdWithbuyerId = "PRODUCT_ID###BUYER_ID"
    //买手id
    case buyerId = "BUYER_ID"
    //搜索  关键字
    case searchKeywords = "SEARCH_KEYWORDS"
    //section 下标
    case section_index = "SECTION_INDEX"
    //自身 sub view 下标
    case self_sub_view_index = "SELF_SUB_VIEW_INDEX"
    //父 sub view 下标
    case parent_sub_view_index = "PARENT_SUB_VIEW_INDEX"
   
    //网页链接
    case webLink = "WEB_LINK"
    //homepage id
    case homepageId = "HOMEPAGE_ID"
    
    //api link
    case apiLink = "API_LINK"
    
    //订单 id
    case orderId = "ORDER_ID"
    
    //不可用
    case notAppliable = "N/A"
}

enum GBHomepageCellLinkType : String {
    
    //单纯商品详情页面
    /**
     该链接类型转跳的下一个页面为 商品详情页，当事件类型为此时，
     页面参考url {base_url}/product/customerView/detail/{product_id}
     cellKeyType 只可能为 PRODUCT_ID
     cellKey 为 对应商品的 product id
    */
    case pureProductDetail = "PURE_PRODUCT_DETAIL"
    //商品详情页面 跟随买手
    /**
     该链接类型转跳的下一个页面为 指定买手的商品详情页，在该商品详情页将商品加入购物车或者立即购买时，应该指定分配该买手，当事件类型为此时，
     页面参考url {base_url}/product/customerView/detail/{product_id}/{buyer_id}
     cellKeyType 只可能为 PRODUCT_ID###BUYER_ID，需要解析出对应的product id 和 buyer id
     cellKey 为 对应商品的 product id 和 买手 id
     */
    case productDetailWithBuyer = "PRODUCT_DETAIL_WITH_BUYER"

    //买手搜索结果list
    /**
     该链接类型转跳的下一个页面为 搜索指定关键字 的 买手列表页面
     页面参考url {base_url}/buyer/list
     url POST BODY = {
        "keywords":"顾大爷" //cellKey 为对应的搜索关键字
     }
     cellKeyType 只可能为 SEARCH_KEYWORDS，
     cellKey 为对应的搜索关键字
     */
    case searchBuyerList = "SEARCH_BUYER_LIST"

    //滚动到section
    /**
     该链接类型 执行 页面滚动到指定 下标 的 component
     cellKeyType 只可能为 SECTION_INDEX，
     cellKey 为 当前页面的 components 数据 的 下标
     */
    case scrollToSection = "SCROLL_TO_SECTION"
    //切换到自身subview
    /**
     该链接类型 只会出现在 subview tab 里，执行的事件为转跳当前页面 到指定的 subview
     cellKeyType 只可能为 SELF_SUB_VIEW_INDEX，
     cellKey 为 需要转跳到的subview 在 subviews数组里的下标 id
     */
    case switchToSelfSubView = "SWITCH_TO_SELF_SUB_VIEW"
    //切换到父亲subview （暂时废弃）
    case switchToParentSubView = "SWITCH_TO_PARENT_SUB_VIEW"
    //热门文章
    /**
     该链接类型转跳的下一个页面为 热门文章 列表页面
     页面参考url {base_url}/article/list/default/{offset}/{count}
     cellKeyType 只可能为 N/A，
     cellKey 不需要
     */
    case hotArticles = "HOT_ARTICLES"
    //网页链接
    /**
     该链接类型转跳的下一个页面为 web view
     cellKeyType 只可能为 WEB_LINK，
     cellKey 为 web view 指定的 url
     */
    case webPage = "WEB_PAGE"
    //买手主页
    /**
     该链接类型转跳的下一个页面为 指定买手的主页
     页面参考url {base_url}/{buyer_id}/kevin/homePage/viewModel?v=3
     cellKeyType 只可能为 BUYER_ID，
     cellKey 买手id
     */
    case buyerHomepage = "BUYER_HOMEPAGE"
    
    //商品列表主页
    /**
     该链接类型转跳的下一个页面为 指定id 的 自定义商品列表主页
     页面参考url {base_url}/homepage/formatProductHomePage/{page_id}
     cellKeyType 只可能为 API_LINK，
     cellKey 转跳页面的数据获取API,GET 方式获取，需要自行拼接base url,例：homepage/formatProductHomePage/1
     */
    case productListHomepage = "PRODUCT_LIST_HOMEPAGE"
    
    //商品主页
    /**
     该链接类型转跳的下一个页面为 指定id 的 自定义商品主页
     页面参考url {base_url}/homepage/formatProductHomePage/{page_id}
     cellKeyType 只可能为 API_LINK，
     cellKey 转跳页面的数据获取API,GET 方式获取，需要自行拼接base url,例：homepage/formatProductHomePage/2
     */
    
    case productRootHomepage = "PRODUCT_ROOT_HOMEPAGE"
    
    
    //订单详情页
    /**
     该链接类型转跳的下一个页面为 指定订单id 的 订单详情页面
     cellKeyType 只可能为 ORDER_ID，
     cellKey 转跳页面的 order id
     */
    case orderDetail = "ORDER_DETAIL"
    
    //最近联系人列表
    /**
     该链接类型转跳的下一个页面为 指定订单id 的 订单详情页面
     cellKeyType N/A，
     cellKey 无需
     */
    case messageList = "MESSAGE_LIST"

    
    //不可用
    case notAppliable = "N/A"
}

class GBHomepageCell:GBBaseModel {

    //cell 高度 对于 750px 宽度屏幕
    var cellHeightTo750pxHeight:Double = 0
    //cell 宽度 对于 750px 宽度屏幕
    var cellWidthTo750pxWidth:Double = 0
    //cell image url
    var cellImageUrls = [String]()
    //cell subtitles
    var cellSubTitles = [String]()
    //cell 链接类型
    var cellLinkType = GBHomepageCellLinkType.notAppliable
    //cell 标示内容
    var cellKey = ""
    //cell 标示内容类型
    var cellKeyType = GBHomepageCellKeyType.notAppliable
}
