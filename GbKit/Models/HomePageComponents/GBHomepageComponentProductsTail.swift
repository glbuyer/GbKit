//
//  GBHomepageComponentProductsTail.swift
//  GbKit
//
//  Created by Ye Gu on 24/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
class GBHomepageComponentProductsTail: GBHomepageBaseComponent {
    
    //标题
    var titleCell = GBHomepageCell()
    //内容 cells
    var contentCells = [GBHomepageCell]()
    //加载更多商品
    var loadMoreContentCellsAPI = ""
    
    //component 高度 对于 750px 宽度屏幕
    var componentHeightTo750pxWidth:Double = 600
    //component 宽度 对于 750px 宽度屏幕
    var componentWidthTo750pxWidth:Double = 750

    
}
