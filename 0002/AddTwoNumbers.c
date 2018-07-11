/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */
struct ListNode* addTwoNumbers(struct ListNode* l1, struct ListNode* l2) {
    struct ListNode *resultNode, *currentNode;
    int carry = 0;

    // Create an initial node
    resultNode = (struct ListNode *) malloc(sizeof(struct ListNode));
    resultNode->val = 0;
    resultNode->next = NULL;

    currentNode = resultNode;

    while (l1 != NULL || l2 != NULL) {
        int n1 = (l1 != NULL) ? l1->val : 0;
        int n2 = (l2 != NULL) ? l2->val : 0;
        int sum = n1 + n2 + carry;
        carry = sum / 10;

        currentNode->val = sum % 10;

        if (l1 != NULL) {
            l1 = l1->next;
        }

        if (l2 != NULL) {
            l2 = l2->next;
        }

        if (l1 != NULL || l2 != NULL) {
            // Create a next node
            struct ListNode *nextNode = (struct ListNode *) malloc(sizeof(struct ListNode));
            nextNode->val = 0;
            nextNode->next = NULL;
            currentNode->next = nextNode;
            currentNode = nextNode;
        }
    }

    if (carry > 0) {
        struct ListNode *nextNode = (struct ListNode *) malloc(sizeof(struct ListNode));
        nextNode->val = carry;
        nextNode->next = NULL;
        currentNode->next = nextNode;
        currentNode = nextNode;
    }

    return resultNode;
}
