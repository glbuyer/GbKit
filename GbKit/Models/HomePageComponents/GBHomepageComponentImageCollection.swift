//
//  GBHomepageComponentImageCollection.swift
//  GbKit
//
//  Created by Ye Gu on 24/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import Foundation
class GBHomepageComponentImageCollection: GBHomepageBaseComponent {
    
    //滚动方向
    var scrollDirection = GBHomepageComponentScrollDirection.fix
    
    //排序方式
    var flowDirection = GBHomepageComponentCellFlowDirection.horizontal
    
    //component 宽度 对于 750px 宽度屏幕
    var contentSizeWidthTo750pxWidth:Double = 750
    
    //component 高度 对于 750px 宽度屏幕
    var contentSizeHeightTo750pxWidth:Double = 50
    
    //成员
    var cells = [GBHomepageCell]()
    
}
