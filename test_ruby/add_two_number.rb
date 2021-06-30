# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2) # 配列同士の和を逆順に並べ替えて配列にして返す 
  (list_to_array(l1).map(&:to_s).join.to_i + list_to_array(l2).map(&:to_s).join.to_i).to_s.reverse.chars.map(&:to_i)
end

def list_to_array(list) # Nodeオブジェクトから配列にするためのメソッド
  queue = []
  
  while list
    queue.unshift(list.val)
    list = list.next
  end
  queue
end