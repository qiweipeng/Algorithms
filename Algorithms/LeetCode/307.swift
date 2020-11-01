//
//  307.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/3/31.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

/*
 307. 区域和检索 - 数组可修改
 
 给定一个整数数组  nums，求出数组从索引 i 到 j  (i ≤ j) 范围内元素的总和，包含 i,  j 两点。

 update(i, val) 函数可以通过将下标为 i 的数值更新为 val，从而对数列进行修改。

 示例:

 Given nums = [1, 3, 5]

 sumRange(0, 2) -> 9
 update(1, 2)
 sumRange(0, 2) -> 8
 说明:

 数组仅可以在 update 函数下进行修改。
 你可以假设 update 函数与 sumRange 函数的调用次数是均匀分布的。


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/range-sum-query-mutable
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation
import DataStructures

/*
Your NumArray object will be instantiated and called as such:
let obj = NumArray(nums)
obj.update(i, val)
let ret_2: Int = obj.sumRange(i, j)
*/

class NumArray307 {

    var segmentTree: SegmentTree<Int>? = nil

    init(_ nums: [Int]) {
        
        guard nums.count > 0 else {
            return
        }
        
        segmentTree = SegmentTree<Int>(array: nums, function: +)
    }
    
    func update(_ i: Int, _ val: Int) {
        segmentTree?.replaceItem(at: i, withItem: val)
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        return segmentTree?.query(leftBound: i, rightBound: j) ?? 0
    }
}
