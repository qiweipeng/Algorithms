//
//  20.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/3/25.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

/*
 20. 有效的括号
 
 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串，判断字符串是否有效。
 
 有效字符串需满足：
 
 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。
 注意空字符串可被认为是有效字符串。
 
 示例 1:
 
 输入: "()"
 输出: true
 示例 2:
 
 输入: "()[]{}"
 输出: true
 示例 3:
 
 输入: "(]"
 输出: false
 示例 4:
 
 输入: "([)]"
 输出: false
 示例 5:
 
 输入: "{[]}"
 输出: true
 
 
 来源：力扣（LeetCode)
 链接：https://leetcode-cn.com/problems/valid-parentheses
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation
import DataStructures

class Solution20 {
    func isValid(_ s: String) -> Bool {
        
        var stack = Stack<String.Element>()
        
        for e in s {
            
            if e == "(" || e == "[" || e == "{" {
                stack.push(e)
            } else {
                if e == ")" {
                    guard let popE = stack.pop(), popE == "(" else { return false }
                }
                if e == "]" {
                    guard let popE = stack.pop(), popE == "[" else { return false }
                }
                if e == "}" {
                    guard let popE = stack.pop(), popE == "{" else { return false }
                }
            }
        }
        
        return stack.isEmpty
    }
}
