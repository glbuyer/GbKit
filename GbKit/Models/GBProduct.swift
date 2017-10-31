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
    //商品来源地
    var productFromArea = GBArea()
    
    //当地市场售价
    var localMarketPrice = 0.00
    //当地商城售价
    var localShopPrice = 0.00
    
    //默认市场售价
    var defaultMarketPrice = 0.00
    //默认商城售价
    var defaultShopPrice = 0.00
    
    //邮费计算参与因子
    var shippingFeeCalculationFactor = 0.00
    
    //当地成本价
    var localCostPrice = 0.00

    
    //商品简述
    var productBriefDescs = [GBCell]()
    //商品服务描述
    var productServiceDescs = [GBCell]()
    
    //商品商店信息
    var shops = [GBProductForShop]()
    
    //输入性质商品采购渠道
    var otherShoppingFromPlaces = ""
    
    //输入性质商品子分类
    var otherSubtypes = ""
    
    //输入商品品牌
    var otherBrandName = ""
    
    
    //商品预设价格
    var preSetLocalCostPrice = 0.00
    //商品代发价格
    var localDelegateShopPrice = 0.00
    //条形码号
    var barcodeNumber = ""
    
    
    //是否真实
    var isReal = true
    //是否热门
    var isHot = true
    //是否在售
    var isOnSale = true
    //是否售罄
    var isOutOfStock = false
    //是否支持无理由退货
    var isSupportNoReasonRefund = false
    
    
    //搜索关键字
    var defaultSeoKeywords = ""
    
    //分类id
    var categoryId = ""
    //商品来源地id
    var productFromAreaId = ""
    //默认邮寄方式
    var defaultShippingMethod = ""
    //商品品牌id
    var brandId = ""
    
    //商品普遍试用
    var productGeneralFit = [String]()
    //适用人群
    var fitPeople = [String]()
    //可购买从商店
    var shopIds = [String]()
    //适用优惠tag id
    var availablePromotionTagIds = [String]()
    
    //是否限购
    var isLimit = false
    //单内限购数量
    var limitNumberInOrder = -1
    
    //最小当地市场价
    var minLocalMarketPrice:Double = 0.00
    //最大当地市场价
    var maxLocalMarketPrice:Double = 0.00

    //最小当地建议售价
    var minSuggestPrice:Double = 0.00
    //最大当地建议售价
    var maxSuggestPrice:Double = 0.00

    
    //适合性别
    var fitGenders = [String]()
    //适合部位
    var fitPartOfBodies = [String]()
    //适合节日
    var fitFestivals = [String]()
    //适合事件
    var fitEvents = [String]()
    

    //税费
    var chargeTaxAmount = 0.00
    //是否为不可同寄商品
    var ifIsolateDelivery = false
    //特殊溢价
    var grantSpecialProfitAmount = 0.00
    //不可同寄补足费
    var isolateDeliveryFee = 0.00
    
    //审核状态
    var examineStatus = 0
    
    //删除等级
    var deleteLevel = 0;
    
    //商品扩展内容
    var prodcutExtensions = [GBProductExtension]()
    
    //商品标签
    var productTags = [GBTag]()
    
    //该商品的促销内容显示
    var productPromotionsDisplay = ""
    
    //买手建议 cost 价格
    var buyerSuggestLocalCostPrice = 0
    
    //买手建议 shop 价格
    var buyerSuggestLocalShopPrice = 0

    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        productId <- map["product_id"]

        
        
    }
    

    
}
