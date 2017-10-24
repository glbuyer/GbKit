//
//  GBHomepageView.swift
//  GbKit
//
//  Created by Ye Gu on 24/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

enum GBHomepageType : String {
    //商品根主页
    case productRootHomepage = "PRODUCT_ROOT_HOMEPAGE"
    //主页类型1
    case homepageTyp1 = "HOMEPAGE_TYPE1"
    //主页类型2
    case homepageTyp2 = "HOMEPAGE_TYPE2"

    //未知
    case unknown = "UNKNOWN"
}

import Foundation
class GBHomepageView: GBBaseModel {
    
    //主页类型
    var homepageType = GBHomepageType.unknown
    //主页tab控制器
    var headerSubViewTabs = [GBHomepageCell]()
    //主页子页面
    var subViews = [GBHomepageView]()
    //该主页 components
    var components = [GBHomepageComponentGeneric]()
    
}
