//
//  BubbleSort.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/3/25.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

import Foundation

/// 冒泡排序。
/// - Parameters:
///   - elements: 需要排序的数组。
///   - comparison: 比较规则。
/// - Complexity: O(n^2)
/// - Returns: 排序后的数组。
public func bubbleSort<T> (_ elements: [T], _ comparison: (T, T) -> Bool) -> [T]  {
    
    var array = elements
    
    for i in 0..<array.count {
        for j in 1..<array.count - i {
            if comparison(array[j], array[j - 1]) {
                array.swapAt(j, j - 1)
            }
        }
    }
    
    return array
}
