public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var addedValue = 0
        var position = 0
        var l1CurrentNode: ListNode? = l1
        var l2CurrentNode: ListNode? = l2
        var resultListNode = ListNode(0)
        var carryNode: ListNode?
        var currentNode = resultListNode

        while l1CurrentNode != nil || l2CurrentNode != nil {
            addedValue += (l1CurrentNode != nil) ? l1CurrentNode!.val : 0
            addedValue += (l2CurrentNode != nil) ? l2CurrentNode!.val : 0
            addedValue += (carryNode != nil) ? carryNode!.val : 0

            var newNode: ListNode?
            if position == 0 {
                resultListNode.val = addedValue
                newNode = resultListNode
            } else {
                newNode = ListNode(addedValue)
                currentNode.next = newNode
                currentNode = newNode!
            }
            carryNode = checkCarrying(newNode!)

            l1CurrentNode = l1CurrentNode?.next ?? nil
            l2CurrentNode = l2CurrentNode?.next ?? nil
            addedValue = 0
            position += 1
        }

        if carryNode != nil {
            currentNode.next = carryNode
            currentNode = carryNode!
            position += 1
        }

        return resultListNode
    }

    func checkCarrying(_ node: ListNode) -> ListNode? {
        var carryNode: ListNode? = nil

        if node.val / 10 > 0 {
            carryNode = ListNode(node.val / 10)
            var remainder = node.val % 10
            node.val = remainder
        }

        return carryNode
    }
}
