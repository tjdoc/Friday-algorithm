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

// from Lia's code
class MergeTwoSortedLists {
    var mergeNode: ListNode?
    func genNode(_ arr: [Int]) -> ListNode {
        var outNode = ListNode(arr[0])
        if arr.count > 1 {
            for ii in 1..<arr.count {
                outNode = appendNode(outNode, ListNode(arr[ii]))
            }
        }
        return outNode
    }
    
    func appendNode(_ originalNode: ListNode, _ appendNode: ListNode) -> ListNode {
        var originalCopy = originalNode
        while originalCopy.next != nil {
            originalCopy = originalCopy.next!
        }
        originalCopy.next = appendNode
        return originalNode
    }
    
    func insertNext(_ value: Int) {
        if mergeNode == nil {
            mergeNode = ListNode(value)
        } else {
            var copy1 = mergeNode
            while copy1!.next != nil {
                copy1 = copy1!.next
            }
            copy1!.next = ListNode(value)
        }
    }
    
    func printNode(_ myNode: ListNode?) {
        var nodeCopy = myNode
        print("[", terminator: "")
        while nodeCopy != nil {
            print(nodeCopy!.val, terminator: ", ")
            nodeCopy = nodeCopy!.next
        }
        print("nil]")
    }
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        var l1copy = l1
        var l2copy = l2
        
        while l1copy != nil && l2copy != nil {
            if l1copy!.val <= l2copy!.val {
                insertNext(l1copy!.val)
                l1copy = l1copy!.next
            } else {
                insertNext(l2copy!.val)
                l2copy = l2copy!.next
            }
        }
        
        // if either one of the list is exhausted, append the other
        switch (l1copy == nil, l2copy == nil) {
        case (false, true):
            mergeNode = appendNode(mergeNode!, l1copy!)
        case (true, false):
            mergeNode = appendNode(mergeNode!, l2copy!)
        default:
            break
        }
        return mergeNode
    }
}

//Runtime: 24 ms, faster than 5.01% of Swift online submissions for Merge Two Sorted Lists.
//Memory Usage: 14 MB, less than 38.78% of Swift online submissions for Merge Two Sorted Lists.
