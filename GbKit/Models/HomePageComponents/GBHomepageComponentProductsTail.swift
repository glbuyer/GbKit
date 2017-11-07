//
//  GBHomepageComponentProductsTail.swift
//  GbKit
//
//  Created by Ye Gu on 24/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//


enum GBHomepageComponentProductsTailRefreshNewContentLoadingIconType : String {
    
    //默认样式
    case normal = "NORMAL"
    //自定义样式1
    case customized1 = "CUSTOMIZED1"
    //不可用
    case notAppliable = "N/A"
}


enum GBHomepageComponentProductsTailLoadMoreContentLoadingIconType : String {
    
    //默认样式
    case normal = "NORMAL"
    //不可用
    case notAppliable = "N/A"
}

import Foundation
class GBHomepageComponentProductsTail: GBHomepageBaseComponent {
    
    //标题
    var titleCell = GBHomepageCell()
    //内容 cells
    var contentCells = [GBHomepageCell]()
    
    
    //刷新商品 加载 图标
    var refreshNewContentLoadingIconType = GBHomepageComponentProductsTailRefreshNewContentLoadingIconType.customized1
    //加载更多商品 加载 图标
    var loadMoreContentLoadingIconType = GBHomepageComponentProductsTailRefreshNewContentLoadingIconType.normal
    
    //刷新商品
    var refreshNewContentCellsAPI = ""
    //加载更多商品
    var loadMoreContentCellsAPI = ""
    
    //component 高度 对于 750px 宽度屏幕
    var componentHeightTo750pxWidth:Double = 600
    //component 宽度 对于 750px 宽度屏幕
    var componentWidthTo750pxWidth:Double = 750

    
}
