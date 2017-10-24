//
//  GBHomepageComponentType1.swift
//  GbKit
//
//  Created by Ye Gu on 24/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
class GBHomepageComponentType1: GBHomepageBaseComponent {
    
    //标题
    var titleCell = GBHomepageCell()
    //banner
    var bannerCell = GBHomepageCell()
    //内容 cells
    var contentCells = [GBHomepageCell]()
    
    //滚动方向
    var contentCellsScrollDirection = GBHomepageComponentScrollDirection.fix
    
    //排序方式
    var contentCellsFlowDirection = GBHomepageComponentCellFlowDirection.horizontal
    
    //component 宽度 对于 750px 宽度屏幕
    var contentCellsContentSizeWidthTo750pxWidth:Double = 750
    
    //component 高度 对于 750px 宽度屏幕
    var contentCellsContentSizeHeightTo750pxWidth:Double = 50
    
    
}
