//
//  ListNode.h
//  AlgoAnalysis
//
//  Created by Rosnel Leyva-Cortés on 4/26/21.
//

#ifndef ListNode_h
#define ListNode_h

@interface ListNode:NSObject

@property  id object;

@property ListNode *next;

- (instancetype)initWithObject:(NSNumber *)object;

- (instancetype)initWithObject:(NSNumber *)object andNextNode:(ListNode *)node;

- (instancetype)init;

 

@end
#endif /* ListNode_h */
