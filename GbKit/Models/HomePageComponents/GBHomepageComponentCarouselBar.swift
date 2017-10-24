//
//  GBHomepageCarouselBar.swift
//  GbKit
//
//  Created by Ye Gu on 24/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//



import Foundation
class GBHomepageComponentCarouselBar: GBHomepageBaseComponent {
    
    //滚动方向
    var scrollDirection = GBHomepageComponentScrollDirection.horizontal
    //轮播时间
    var autoScrollInterval = 3.8
    //component 高度 对于 750px 宽度屏幕
    var componentHeightTo750pxWidth:Double = 200
    //图片成员
    var cells = [GBHomepageCell]()
    
}
