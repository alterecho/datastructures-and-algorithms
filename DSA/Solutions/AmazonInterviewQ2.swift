//
//  AmazonInterviewQ2.swift
//  DSA
//
//  Created by Vijaychandran Jayachandran on 8/8/24.
//

import Foundation

import Foundation

public class AmazonInterviewQ2: Solution {
  
  typealias Input = (server_states: String, k: Int)
  
  let input: Input
  
  required init(input: Input) {
    self.input = input
  }
  

  var problemStatement: String {
"""
Amazon has a cluster of n servers. Some are in the OFF state while others are ON. The developers responsible for maintaining the servers have access to a special operation to change the states. In one operation, they can choose a contiguous sequence of servers and flip their states, i.e., ON to OFF and vice versa. Due to operational constraints, this operation can be performed on the cluster a maximum of k times.
Given a binary string server_states, of length n, where '1' represents ON, 'O' represents OFF, and an integer k, find the maximum possible number of consecutive ON servers after at most k operations.
Example
Suppose server_states = "1001", and k= 2.
The indices [1..2] can be chosen and flipped in one operation as follows:
1
3
0
3
Thus in one operation, the maximum number of consecutive ON servers is 4. It is optimal to stop after 1 operation.
Function Description
Complete the function getMaxConsecutiveON in the editor below.

Explanation
It is optimal to apply the special operations on consecutive indices (0-based indexing) as follows:
• Flip indices [O..21 giving states = "11110"
After 1 operation, there are a maximum of 4 consecutive ON servers.
• Sample Case 1
Sample Input For Custom Testing
STDIN
FUNCTION
11101010110011
"11101010110011"
server_states =
2
→
k = 2
Sample Output
8
Explanation
It is optimal to apply the special operations on consecutive indices (0-based indexing) as follows:
• Flip indices [7...91 giving states = "11101011000011"
• Flip indices [8... 11] giving states = "1110101111111"
After 2 operations, a maximum of 8 consecutive ON servers can be obtained.
"""
  }
  
  func execute() -> Int? {
    let servers = Array(input.server_states)
    var left = 0, right = 0
    var previousLeftValue: Character = "1", previousRightValue: Character = "1"
    var zeroCount = 0
    var maxConsecutiveOnServers = 0
    while right < servers.count {
      if servers[right] == "0" && previousRightValue != "0" {
        zeroCount += 1
      }
      while zeroCount > input.k {
        if servers[left] == "0" && previousLeftValue != "0" {
          zeroCount -= 1
        }
        previousLeftValue = servers[left]
        left += 1
      }
      
      previousRightValue = servers[right]
      right += 1
      
      maxConsecutiveOnServers = max(maxConsecutiveOnServers, right - left)
      print("[\(left)...\(right)]: \(servers[left..<right]), consecutiveOnServers: \(right - left) zeroCount: \(zeroCount), maxConsecutiveOnServers: \(maxConsecutiveOnServers)")
    }
    return maxConsecutiveOnServers
  }
}



