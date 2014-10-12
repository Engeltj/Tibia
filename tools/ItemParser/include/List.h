/*
 PROJECT: CIS*2520 A2
 AUTHOR: Timothy Engel
 DATE CREATED: 09/01/2012
 DATE UPDATED: 01/21/2013
 KNOWN BUGS: None
 */

typedef struct _listNode {
	void * key;
	int count;
	struct _listNode * next;
} ListNode;

typedef struct _list {
	ListNode * head;
	ListNode * tail;
	int count;
} List;

/*creates a new list with dummy Node
 PRE: none
 POST: A list is created and initialized to empty
 */
List * createList ();

/*destroys a list, frees the data
 PRE: an initialized link list
 POST: link list is removed completely from memory*/
List * destroyList(List * data);

/*gets and returns the first nodes element
 PRE: an initialized list link
 POST: none*/
void * getFront(List * data);

/*removes the first node in a list, frees the memory
 PRE: an initialized list link
 POST: first node after dummy gets removed from memory*/
void removeFront(ListNode * head);

/*removes the specified node form memory
 PRE: an initialized list link, the node before one to remove
 POST: specified node removed*/
int removeNodeString(ListNode * prevNode, char * value);

/*Counts the size of a link list
 PRE: an initialized list link
 POST: returned a list size int*/
int listSize(ListNode * head);

/*adds a new Node to the end of link list (after dummy)
 PRE: an initialized list link
 POST: list is one node larger, address of newNode returned*/
ListNode * addEnd (ListNode * tail, void * value);

/*prints link list to stdout
 PRE: an initialized list link
 POST: none*/
void printList(ListNode *data);

/*locates a given value in a list
 PRE: link list and a key
 POST: boolean, true/false if found
 */
int listLocate(ListNode * head, void * key);

/* updates the counter to counter+1 in a list node
 PRE: a list node and a key
 POST: counter updated, returns the count
*/
int updateList(ListNode * nodePtr, void * key);

/*initializes a new Node, for adding to a link list
 PRE: none
 POST: memory allocated for a node*/
ListNode * initNode();