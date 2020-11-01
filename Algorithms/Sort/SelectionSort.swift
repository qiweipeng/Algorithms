//
//  SelectionSort.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/4/2.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

import Foundation

/// 选择排序。
/// - Parameters:
///   - elements: 需要排序的数组。
///   - comparison: 比较规则。
/// - Complexity: O(n^2)
/// - Returns: 排序后的数组。
public func selectionSort<T> (_ elements: [T], _ comparison: (T, T) -> Bool) -> [T]  {
    guard elements.count > 1 else { return elements }
    
    var array = elements
    
    for i in 0..<array.count - 1 {
        var lowest = i
        
        for j in i + 1..<array.count {
            if comparison(array[j], array[lowest]) {
                lowest = j
            }
        }
        
        if i != lowest {
            array.swapAt(i, lowest)
        }
    }
    
    return array
}
