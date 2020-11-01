//
//  203.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/3/28.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

/*
 203. 移除链表元素
 
 删除链表中等于给定值 val 的所有节点。
 
 示例:
 
 输入: 1->2->6->3->4->5->6, val = 6
 输出: 1->2->3->4->5
 
 
 来源：力扣（LeetCode)
 链接：https://leetcode-cn.com/problems/remove-linked-list-elements/
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation
import DataStructures

class Solution203 {
    
    class ListNode {
        var val: Int
        var next: ListNode?
        init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        
        head?.next = removeElements(head?.next, val)
        
        return head?.val == val ? head?.next : head
    }
}
