//
//  208.swift
//  Algorithms
//
//  Created by Weipeng Qi on 2020/4/1.
//  Copyright © 2020 Weipeng Qi. All rights reserved.
//

/*
 208. 实现 Trie (前缀树)
 
 实现一个 Trie (前缀树)，包含 insert, search, 和 startsWith 这三个操作。

 示例:

 Trie trie = new Trie();

 trie.insert("apple");
 trie.search("apple");   // 返回 true
 trie.search("app");     // 返回 false
 trie.startsWith("app"); // 返回 true
 trie.insert("app");
 trie.search("app");     // 返回 true
 说明:

 你可以假设所有的输入都是由小写字母 a-z 构成的。
 保证所有输入均为非空字符串。


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/implement-trie-prefix-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

class Trie208 {
    
    private class Node {
        var isTerminating = false
        var children: [Character: Node] = [:]
    }
    
    private let root: Node

    /** Initialize your data structure here. */
    init() {
        root = Node()
    }
    
    /** Inserts a word into the trie. */
    func insert(_ word: String) {
        guard !word.isEmpty else {
            return
        }
        var currentNode = root
        for character in word.lowercased() {
            if let childNode = currentNode.children[character] {
                currentNode = childNode
            } else {
                currentNode.children[character] = Node()
                currentNode = currentNode.children[character]!
            }
        }
        
        guard !currentNode.isTerminating else {
            return
        }
        currentNode.isTerminating = true
    }
    
    /** Returns if the word is in the trie. */
    func search(_ word: String) -> Bool {
        guard !word.isEmpty else {
          return false
        }
        var currentNode = root
        for character in word.lowercased() {
          guard let childNode = currentNode.children[character] else {
            return false
          }
          currentNode = childNode
        }
        return currentNode.isTerminating
    }
    
    /** Returns if there is any word in the trie that starts with the given prefix. */
    func startsWith(_ prefix: String) -> Bool {
        guard !prefix.isEmpty else {
          return true
        }
        var currentNode = root
        for character in prefix.lowercased() {
          guard let childNode = currentNode.children[character] else {
            return false
          }
          currentNode = childNode
        }
        return true
    }
}
