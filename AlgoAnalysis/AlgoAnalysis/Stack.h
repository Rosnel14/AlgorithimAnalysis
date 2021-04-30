//
//  Stack.h
//  AlgoAnalysis
//
//  Created by Rosnel Leyva-Cortés on 4/26/21.
//

#ifndef Stack_h
#define Stack_h
#import "ListNode.h"
@interface Stack : NSObject

@property (nonatomic) ListNode *head;

//constructor
-(instancetype)initWithHeadNode:(ListNode *)h;
-(instancetype)initWithHeadObject:(NSNumber *)h;

//methods
-(bool)push : (NSNumber *) item; //push an item onto the stack
-(NSNumber *)pop; //removes and returns the item on the top of the stack
-(NSNumber *)peek; //returns the item on the top of the stack
-(bool)isEmpty; //returns true if the stack is empty, false otherwise
-(int)size; //returns the size of the stack
-(void)print; //print out every element in the list

@end

#endif /* Stack_h */
