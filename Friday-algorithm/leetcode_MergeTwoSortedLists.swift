//
//  leet_MergeTwoSortedLists.swift
//  Friday-algorithm
//
//  Created by Tae-Jin Oh on 2020/11/27.
//
/*
 Merge two sorted linked lists and return it as a new sorted list.
 The new list should be made by splicing together the nodes of the first two lists.
 
 Input: l1 = [1,2,4], l2 = [1,3,4]
 Output: [1,1,2,3,4,4]
 Example 2:
 
 Input: l1 = [], l2 = []
 Output: []
 Example 3:
 
 Input: l1 = [], l2 = [0]
 Output: [0]
 
 The number of nodes in both lists is in the range [0, 50].
 -100 <= Node.val <= 100
 Both l1 and l2 are sorted in non-decreasing order.
 */

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class MergeTwoSortedLists {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        var outNode: ListNode?
        var l1NextNode = l1
        var l2NextNode = l2
        
        
        
        return outNode
    }
}
