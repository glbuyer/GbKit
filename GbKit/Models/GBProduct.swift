//
//  Product.swift
//  glbuyer-ios
//
//  Created by GuYe on 16/10/28.
//  Copyright © 2016年 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper


class GBProduct:GBBaseModel {
    
    //商品ID
    var productId = ""
    //商品短名字
    var productShortName  = ""
    //商品长名字
    var productFullName  = ""
    
    //商品主图
    var productMainImageURL  = ""
    
    //商品Gallery (不包含主图)
    var productGalleryImageURLs  = [String]()
    //商品详情图
    var productDescImageURLs  = [String]()
    //商品重量KG
    var productWeightKg  = 0.00
    //商品子分类
    var productSubtypes = [GBProductSubtype]()
    //商品品牌
    var productBrand = GBBrand()
    //商品分类
    var productCategory = GBCategory()
    
    //默认市场售价
    var defaultMarketPrice = 0.00
    //默认商城售价
    var defaultShopPrice = 0.00
    
    //当地市场售价
    var localMarketPrice = 0.00
    //当地商城售价
    var localShopPrice = 0.00
    //商品来源地
    var productFromArea = GBArea()
    
    
    
    
    //商品简述
    var productBriefDescs = [GBCell]()
    //商品服务描述
    var productServiceDescs = [GBCell]()

    //商品扩展内容
    var prodcutExtensions = [GBProductExtension]()
    
    //商品标签
    var productTags = [GBTag]()

    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        productId <- map["product_id"]

        
        
    }
    

    
}
