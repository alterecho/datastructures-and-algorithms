//
//  LinkedList.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 9/8/24.
//

import Foundation


public class LinkedList<T: Equatable>: Equatable {
  public static func == (lhs: LinkedList<T>, rhs: LinkedList<T>) -> Bool {
    var lhs: Node? = lhs.root
    var rhs: Node? = rhs.root
    while lhs != nil {
      if lhs?.value != rhs?.value {
        return false
      }
      lhs = lhs?.next
      rhs = rhs?.next
    }
    return true
  }
  
  public class Node {
    public var value: T
    public var next: Node?
    public var previous: Node?
    
    public init(_ value: T) {
      self.value = value
    }
  }
  
  let root: Node?
  
  init(_ values: T...) {
    guard let firstValue = values.first else {
      root = nil
      return
    }
    self.root = values.reduce(
      Node(firstValue)
    ) { partialResult, value in
      let node = Node(firstValue)
      partialResult.next = node
      return partialResult
    }
  }
}

