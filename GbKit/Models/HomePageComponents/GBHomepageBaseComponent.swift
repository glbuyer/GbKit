//
//  GBHomepageBaseComponent.swift
//  GbKit
//
//  Created by Ye Gu on 24/10/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//
enum GBHomepageBaseComponentType : String {
    //轮播栏
    case carouselBar = "CAROUSEL_BAR"
    //带下标的icon集合
    case iconsWithBottomSubtitle = "ICONS_BOTTOM_SUBTITLE"
    //images集合
    case imageCollection = "IMAGE_COLLECTION"
    //风格一号
    case componentType1 = "COMPONENT_TYPE1"
    //风格一号
    case componentType2 = "COMPONENT_TYPE2"
    //尾部商品
    case productsTail = "PRODUCTS_TAIL"
    //未知
    case unknown = "UNKNOWN"
}

enum GBHomepageComponentScrollDirection:String {
    //横向
    case horizontal = "HORIZONTAL"
    //纵向
    case vertical = "VERTICAL"
    //任意
    case any = "ANY"
    //不可滚动
    case fix = "FIX"
}

enum GBHomepageComponentCellFlowDirection:String {
    //横向
    case horizontal = "HORIZONTAL"
    //纵向
    case vertical = "VERTICAL"
}

import Foundation
class GBHomepageBaseComponent:GBBaseModel {

    //组件类型
    var componentType = GBHomepageBaseComponentType.unknown
    
}
