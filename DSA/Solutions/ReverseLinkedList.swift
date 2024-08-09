//
//  ReverseLinkedList.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 9/8/24.
//

import Foundation

class ReverseLinkedList: Solution {
  
  private let input: LinkedList<Int>
  
  required init(input: LinkedList<Int>) {
    self.input = input
  }
  
  private static let defaultInput: LinkedList = LinkedList(1, 2, 4, 1, 3, 4)
  

  var problemStatement: String {
    "Merge two sorted linked lists and return it as a new sorted list. The new list should be made by splicing together the nodes of the first two lists"
  }
    
  func execute() -> LinkedList<Int>.Node? {
    return nil
  }
}
