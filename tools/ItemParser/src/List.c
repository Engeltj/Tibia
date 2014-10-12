/*
 ASSIGNMENT: CIS*2520 A2
 AUTHOR: Timothy Engel
 DATE CREATED: 09/01/2012
 DATE UPDATED: 01/23/2013
 KNOWN BUGS: None
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "List.h"


List * createList (){
	List * newList = malloc(sizeof(List));
    ListNode * newNode = initNode();
    newNode->key = 0;
	newNode->count = 0;
	newList->head = newNode;
	newList->tail = newNode;
	newList->count = 0;
    return newList;
}

List * destroyList(List * data){
	ListNode * head = NULL;
    ListNode * tempPtr = NULL;
	if (data != NULL){
		head = data->head;
		while (head != NULL){
			tempPtr = head->next;
			if (head->key != NULL)
				free(head->key);
			free(head);
			head = tempPtr;
		}
		free(data);
		data = NULL;
	}
    return data;
}

void * getFront(List * data){
	ListNode * nodePtr = NULL;
	if (data != NULL){
		nodePtr = data->head;
		if (nodePtr->next != NULL)
			return nodePtr->next->key;
		else
			return NULL;
	}
	return NULL;
}

void removeFront(ListNode * data){
    ListNode * tempPtr = NULL;
	if (data != NULL){
		tempPtr=data->next;
		if (listSize(data) >= 3){
			data->next = data->next->next;
			free(tempPtr);
			tempPtr=NULL;
		}
		else if(listSize(data) == 2){
			free(tempPtr);
			tempPtr=NULL;
			data->next = NULL;
		}
	}
	else
		fprintf(stderr, "Failed to removeFront, list is empty");
}

int removeNodeString(ListNode * head, char * value){
	ListNode * tempPtr=NULL;
	ListNode * removePtr = NULL;
	if (head != NULL){
		tempPtr = head->next;
		if (tempPtr != NULL)
		while (tempPtr->next != NULL){
			if (strcmp(value, tempPtr->next->key) == 0){
				removePtr = tempPtr->next;
				tempPtr->next = tempPtr->next->next;
				free(removePtr);
				removePtr=NULL;
				return 1;
			}
			tempPtr = tempPtr->next;
		}
	}
	else
		fprintf(stderr, "Pointer is NULL!\n");
	return 0;
}

int listSize(ListNode * data){
	int i=0;
	ListNode * tempPtr = data->next;
	while (tempPtr != NULL) {
		tempPtr = tempPtr->next; /*moves to the next set of values in 2D struct*/
		i++;
	}
	return i-1;
}

ListNode * addEnd (ListNode * tail, void * value){
    ListNode * newPtr = initNode();
	newPtr->key = value;
	newPtr->count = 0;
    tail->next = newPtr;
	return tail->next;
}

void printList(ListNode * data){
    /*int i=0;
    List * tempPtr = data;
    if (tempPtr != NULL)
        tempPtr=tempPtr->next; skip dummy node
    while (tempPtr != NULL){
        i++;
        printf("%d.\tKey: %s\n", i, tempPtr->key);
        tempPtr=tempPtr->next; switch to next Node
    }*/
}

int updateList(ListNode * nodePtr, void * key){
	ListNode * tempPtr = NULL;
	if (nodePtr != NULL){
		tempPtr = nodePtr->next;
		while (tempPtr != NULL){
			if (key == tempPtr->key)
				tempPtr->count = tempPtr->count + 1;
			tempPtr = tempPtr->next;
		}
	}
	return tempPtr->count;
}

int listLocate(ListNode * head, void * key){
	ListNode * tempPtr = NULL;
	if (head != NULL){
		tempPtr = head->next;
		while (tempPtr != NULL){
			if (key == tempPtr->key)
				return 1;
			tempPtr = tempPtr->next;
		}
	}
	return 0;
}

ListNode * initNode(){
    ListNode * newNode = (ListNode *) malloc(sizeof(ListNode));
	newNode->key = NULL;
    newNode->next = NULL;
    return newNode;
}