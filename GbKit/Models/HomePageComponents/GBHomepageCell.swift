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
    //不可用
    case notAppliable = "N/A"
}

enum GBHomepageCellLinkType : String {
    
    //单纯商品详情页面
    case pureProductDetail = "PURE_PRODUCT_DETAIL"
    //商品详情页面 跟随买手
    case productDetailWithBuyer = "PRODUCT_DETAIL_WITH_BUYER"
    //商品搜索结果list
    case searchProductList = "SEARCH_PRODUCT_LIST"
    //买手搜索结果list
    case searchBuyerList = "SEARCH_BUYER_LIST"
    //折扣商品搜索结果页面
    case searchDiscountProductList = "SEARCH_DISCOUNT_PRODUCT_LIST"
    //滚动到section
    case scrollToSection = "SCROLL_TO_SECTION"
    //切换到自身subview
    case switchToSelfSubView = "SWITCH_TO_SELF_SUB_VIEW"
    //切换到父亲subview
    case switchToParentSubView = "SWITCH_TO_PARENT_SUB_VIEW"
    //热门文章
    case hotArticles = "HOT_ARTICLES"
    //网页链接
    case webPage = "WEB_PAGE"
    //买手主页
    case buyerHomepage = "BUYER_HOMEPAGE"
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
    var cellSubtitles = [String]()
    //cell 链接类型
    var cellLinkType = GBHomepageCellLinkType.notAppliable
    //cell 标示内容
    var cellKey = ""
    //cell 标示内容类型
    var cellKeyType = GBHomepageCellKeyType.notAppliable
}
