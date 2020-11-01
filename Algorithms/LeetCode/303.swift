//
//  303.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/3/28.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

/*
 303. 区域和检索 - 数组不可变
 
 给定一个整数数组  nums，求出数组从索引 i 到 j  (i ≤ j) 范围内元素的总和，包含 i,  j 两点。

 示例：

 给定 nums = [-2, 0, 3, -5, 2, -1]，求和函数为 sumRange()

 sumRange(0, 2) -> 1
 sumRange(2, 5) -> -1
 sumRange(0, 5) -> -3
 说明:

 你可以假设数组不可变。
 会多次调用 sumRange 方法。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/range-sum-query-immutable
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

/*
 Your NumArray object will be instantiated and called as such:
 let obj = NumArray(nums)
 let ret_1: Int = obj.sumRange(i, j)
 */

class NumArray303 {
    
    var sums: [Int] = [0]
    
    init(_ nums: [Int]) {
        for (i, num) in nums.enumerated() {
            let sum = sums[i] + num
            sums.append(sum)
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        return sums[j + 1] - sums[i]
    }
}
