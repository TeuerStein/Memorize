//
//  GridLayout.swift
//  Memorize
//
//  Created by OLEKSANDR SOKOLOV on 28.10.2020.
//

import SwiftUI

struct GridLayout {
    var size: CGSize
    var rowCount: Int = 0
    var columnCount: Int = 0
    
    init(itemCount: Int, nearAspectRatio desiredAspectRatio: Double = 1, in size: CGSize) {
        self.size = size
        
        guard size.width != 0, size.height != 0, itemCount > 0 else { return }
        
        var bestLayout: (rowCount: Int, columnCount: Int) = (1, itemCount)
        var smallestVariance: Double?
        let sizeAspectRatio = abs(Double(size.width/size.height))
        
        for rows in 1...itemCount {
            let columns = (itemCount / rows) + (itemCount % rows > 0 ? 1 : 0)
            
            if (rows - 1) * columns < itemCount {
                let itemAspectRatio = sizeAspectRatio * (Double(rows)/Double(columns))
                let variance = abs(itemAspectRatio - desiredAspectRatio)
                
                if smallestVariance == nil || variance < smallestVariance! {
                    smallestVariance = variance
                    bestLayout = (rowCount: rows, columnCount: columns)
                }
            }
        }
        
        rowCount = bestLayout.rowCount
        columnCount = bestLayout.columnCount
    }
}
