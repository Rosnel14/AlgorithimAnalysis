//
//  ListNode.m
//  AlgoAnalysis
//
//  Created by Rosnel Leyva-Cortés on 4/26/21.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

@implementation ListNode:NSObject


- (instancetype)initWithObject:(NSNumber *)object {
    self = [super init];
    if (self) {
        self.object = object;
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    return self;

}

- (instancetype)initWithObject:(NSNumber *)object andNextNode:(ListNode *)node {
    self = [super init];
    if (self) {
        self.object = object;
        self.next = node;
    }
    return self;

}

@end
