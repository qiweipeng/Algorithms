//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/4/2.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

import Foundation

/// 插入排序。
///
/// 插入排序在最优的情况下，即数组已经排序好的情况下，复杂度为 O(n)，但是最坏和平均依然是 O(n2)
///
/// - Parameters:
///   - elements: 需要排序的数组。
///   - comparison: 比较规则。
/// - Complexity: O(n^2)
/// - Returns: 排序后的数组。
func insertionSort<T>(_ elements: [T], _ comparison: (T, T) -> Bool) -> [T] {
    guard elements.count > 1 else { return elements }
    
    var array = elements
    
    for i in 1..<array.count {
        var j = i
        let temp = array[j]
        while j > 0 && comparison(temp, array[j - 1]) {
            array[j] = array[j - 1]
            j -= 1
        }
        array[j] = temp
    }
    return array
}
