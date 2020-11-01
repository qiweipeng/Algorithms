//
//  350.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/3/28.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

/*
 350. 两个数组的交集 II
 
 给定两个数组，编写一个函数来计算它们的交集。

 示例 1:

 输入: nums1 = [1,2,2,1], nums2 = [2,2]
 输出: [2,2]
 示例 2:

 输入: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 输出: [4,9]
 说明：

 输出结果中每个元素出现的次数，应与元素在两个数组中出现的次数一致。
 我们可以不考虑输出结果的顺序。
 进阶:

 如果给定的数组已经排好序呢？你将如何优化你的算法？
 如果 nums1 的大小比 nums2 小很多，哪种方法更优？
 如果 nums2 的元素存储在磁盘上，磁盘内存是有限的，并且你不能一次加载所有的元素到内存中，你该怎么办？

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/intersection-of-two-arrays-ii
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

class Solution350 {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict: [Int: Int] = [:];
        
        for num in nums1 {
            if !dict.contains(where: { (k, _) -> Bool in
                k == num
            }) {
                dict[num] = 1
            } else {
                dict[num] = dict[num]! + 1
            }
        }
        
        var nums: [Int] = []
        
        for num in nums2 {
            if dict.contains(where: { (k, _) -> Bool in
                k == num
            }) {
                nums.append(num)
                dict[num] = dict[num]! - 1
                
                if dict[num] == 0 {
                    dict.removeValue(forKey: num)
                }
            }
        }
        
        return nums
    }
}
