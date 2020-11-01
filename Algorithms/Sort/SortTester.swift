//
//  SortTester.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/4/2.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

import Foundation

class SortTester {
    
    func test() {
        
        var nums:[Int] = []
        for _ in 0..<100 {
            nums.append(Int(arc4random()%10_000))
        }
        
        // 先进行一次从小到大排序
        let time1 = CFAbsoluteTimeGetCurrent()
        let bubbleSortNums1 = bubbleSort(nums, <)
        let time2 = CFAbsoluteTimeGetCurrent()
        let selectionSortNums1 = selectionSort(nums, <)
        let time3 = CFAbsoluteTimeGetCurrent()
        let insertionSortNums1 = insertionSort(nums, <)
        let time4 = CFAbsoluteTimeGetCurrent()
        let sortedNums1 = nums.sorted(by: <)
        let time5 = CFAbsoluteTimeGetCurrent()
        
        // 将排序好的数组进行一次从大到小排序
        let bubbleSortNums2 = bubbleSort(bubbleSortNums1, >)
        let time6 = CFAbsoluteTimeGetCurrent()
        let selectionSortNums2 = selectionSort(selectionSortNums1, >)
        let time7 = CFAbsoluteTimeGetCurrent()
        let insertionSortNums2 = insertionSort(insertionSortNums1, >)
        let time8 = CFAbsoluteTimeGetCurrent()
        let sortedNums2 = sortedNums1.sorted(by: >)
        let time9 = CFAbsoluteTimeGetCurrent()
        
        // 重复进行一次从大到小排序
        let _ = bubbleSort(bubbleSortNums2, >)
        let time10 = CFAbsoluteTimeGetCurrent()
        let _ = selectionSort(selectionSortNums2, >) // O(n2)
        let time11 = CFAbsoluteTimeGetCurrent()
        let _ = insertionSort(insertionSortNums2, >)
        let time12 = CFAbsoluteTimeGetCurrent()
        let _ = sortedNums2.sorted(by: >)
        let time13 = CFAbsoluteTimeGetCurrent()
        
        print(time2 - time1)
        print(time3 - time2)
        print(time4 - time3)
        print(time5 - time4)
        print(time6 - time5)
        print(time7 - time6)
        print(time8 - time7)
        print(time9 - time8)
        print(time10 - time9)
        print(time11 - time10)
        print(time12 - time11)
        print(time13 - time12)
        
        /*
         100 个随机数                 1000 个随机数
         0.004149913787841797       0.36889100074768066       100倍
         0.002444028854370117       0.24126100540161133       100倍
         0.0002499818801879883      0.016525983810424805      100倍
         0.0005630254745483398      0.006685018539428711
         
         0.0047539472579956055      0.47541892528533936       100倍
         0.002297043800354004       0.25589799880981445       100倍
         0.00037801265716552734     0.046395063400268555      100倍
         0.00004398822784423828     0.01311194896697998
         
         0.0026830434799194336      0.29036104679107666       100倍
         0.0024529695510864258      0.22979497909545898       100倍
         0.000052928924560546875    0.000491023063659668      10倍
         0.000052094459533691406    0.00037097930908203125
         
         对于已经接近顺序的数组，使用插入排序性能会好很多。
         */
    }
}
