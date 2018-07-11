/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */
struct ListNode* addTwoNumbers(struct ListNode* l1, struct ListNode* l2) {
    struct ListNode *resultNode, *currentNode;
    unsigned long long int sum = 0;
    unsigned long long int tenthPower = 1;
    int pairEnded = 0;
    int listOneEndedCount = 0;
    int listTwoEndedCount = 0;

    if (l1->next == NULL && l2->next == NULL) {
        sum = l1->val + l2->val;
        listOneEndedCount = 1;
        listTwoEndedCount = 1;
        pairEnded = 1;
    }

    while (l1->next != NULL || l2->next != NULL) {
        if (tenthPower == 1) {
            sum = l1->val + l2->val;
        } else if (pairEnded == 0) {
            sum += tenthPower * (l1->val + l2->val);
        } else if (listOneEndedCount == 0) {
            sum += tenthPower * l1->val;
        } else if (listTwoEndedCount == 0) {
            sum += tenthPower * l2->val;
        }

        if (listOneEndedCount > 0) {
            listOneEndedCount++;
        } else if (l1->next == NULL) {
            listOneEndedCount = 1;
            pairEnded = 1;
        } else {
            l1 = l1->next;
        }

        if (listTwoEndedCount > 0) {
            listTwoEndedCount++;
        } else if (l2->next == NULL) {
            listTwoEndedCount = 1;
            pairEnded = 1;
        } else {
            l2 = l2->next;
        }

        tenthPower *= 10;

        // For the two lists all arrive the last node
        if (l1->next == NULL && l2->next == NULL) {
            if (listOneEndedCount == 0 && listTwoEndedCount == 0) {
                sum += tenthPower * (l1->val + l2->val);
            } else if (listOneEndedCount > 0) {
                sum += tenthPower * l2->val;
            } else if (listTwoEndedCount > 0) {
                sum += tenthPower * l1->val;
            }
        }
    }

    // Create new Linked List
    resultNode = (struct ListNode *) malloc(sizeof(struct ListNode));
    resultNode->val = sum%10;
    resultNode->next = NULL;

    currentNode = resultNode;

    unsigned long long int remainDigits = sum;
    int digit = 0;

    while ((remainDigits /= 10) > 0) {
        digit = remainDigits % 10;

        struct ListNode *nextNode = (struct ListNode *) malloc(sizeof(struct ListNode));
        nextNode->val = digit;
        nextNode->next = NULL;
        currentNode->next = nextNode;
        currentNode = nextNode;
    }

    return resultNode;
}
