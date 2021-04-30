//
//  StackArray.h
//  AlgoAnalysis
//
//  Created by Rosnel Leyva-Cortés on 4/26/21.
// Stack implementation using nsmutable arrays 

#ifndef StackArray_h
#define StackArray_h

@interface StackArray : NSObject

@property NSMutableArray * storageList;

//constructor
-(instancetype)init;

//methods
-(bool)push : (NSNumber *) item; //push an item onto the stack
-(NSNumber *)pop; //removes and returns the item on the top of the stack
-(NSNumber *)peek; //returns the item on the top of the stack
-(bool)isEmpty; //returns true if the stack is empty, false otherwise
-(int)size; //returns the size of the stack
-(void)print; //print out every element in the list


@end


#endif /* StackArray_h */
