//
//  GBCell.swift
//  GbKit
//
//  Created by Ye Gu on 16/8/17.
//  Copyright © 2017 glbuyer. All rights reserved.
//

import Foundation
import ObjectMapper

enum GBCellType : String {
    case PRODUCT_BRIEF_DESC_CELL = "PRODUCT_BRIEF_DESC_CELL"
    case OTHER_CELL = "OTHER_CELL"
}

class GBCell:BaseModel {
    
    
    var cellType = GBCellType.OTHER_CELL
    //cell 标题
    var cellTitle = ""
    //cell 子标题
    var cellSubTitles = [String]()
    //cell 图片URL
    var cellImageURL = ""
    
    
    
    // Mappable
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        cellType <- (map["cell_type"],EnumTransform<GBCellType>())
        
    }
    
    
    
}
