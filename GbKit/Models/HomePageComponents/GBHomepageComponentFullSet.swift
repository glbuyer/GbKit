//
//  GBHomepageComponentFullSet.swift
//  GbKit
//
//  Created by Ye Gu on 31/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
class GBHomepageComponentFullSet: GBHomepageBaseComponent {
    
    
    
    
    //组件 类型
    var componentType = GBHomepageBaseComponentType.unknown
    //组件 滚动方向
    var scrollDirection = GBHomepageComponentScrollDirection.horizontal
    //组件 排序方式
    var flowDirection = GBHomepageComponentCellFlowDirection.horizontal
    //组件 轮播时间
    var autoScrollInterval = 3.8
    
    //组件 高度 对于 750px 宽度屏幕
    var componentHeightTo750pxWidth:Double = 200
    //组件 宽度 对于 750px 宽度屏幕
    var componentWidthTo750pxWidth:Double = 750
    
    //组件内容 宽度 对于 750px 宽度屏幕
    var contentSizeWidthTo750pxWidth:Double = 750
    //组件内容 高度 对于 750px 宽度屏幕
    var contentSizeHeightTo750pxWidth:Double = 50
    
    //成员
    var cells = [GBHomepageCell]()
    //标题
    var titleCell = GBHomepageCell()
    //banner
    var bannerCell = GBHomepageCell()

    
    //内容 滚动方向
    var contentCellsScrollDirection = GBHomepageComponentScrollDirection.fix
    //内容 排序方式https://www.youtube.com/watch?v=d2vUbAK0c5U
    var contentCellsFlowDirection = GBHomepageComponentCellFlowDirection.horizontal
    
    //主体内容 cells
    var contentCells = [GBHomepageCell]()
    //主体内容 宽度 对于 750px 宽度屏幕
    var contentCellsContentSizeWidthTo750pxWidth:Double = 750
    //主体内容 高度 对于 750px 宽度屏幕
    var contentCellsContentSizeHeightTo750pxWidth:Double = 50
    
    //更多 cells
    var viewMoreCell = GBHomepageCell()
    
    //加载更多商品
    var loadMoreContentCellsAPI = ""
    
}

