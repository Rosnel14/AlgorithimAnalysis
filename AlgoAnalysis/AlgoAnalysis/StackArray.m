//
//  StackArray.m
//  AlgoAnalysis
//
//  Created by Rosnel Leyva-Cortés on 4/26/21.
//

#import <Foundation/Foundation.h>
#import "StackArray.h"

@implementation StackArray

//constructor
-(instancetype)init{
    if(self){
        self = [super init];
        self.storageList =[[NSMutableArray alloc] init];
    }
    return self;
}

//push
-(BOOL)push:(NSNumber *)item{
    if([self.storageList count] == 0) {
        [self.storageList addObject:item];
        return true;
    } else {
        [self.storageList addObject:item];
        return true;
    }
    
}

//pop
-(NSNumber *)pop{
    NSNumber * returnObj = [self.storageList lastObject];
    [self.storageList removeLastObject];
    return returnObj;
}

//peek
-(NSNumber *)peek{
    return [self.storageList lastObject];
}

//isEmpty
-(BOOL)isEmpty{
    if([self.storageList count] == 0){
        return true;
    } else {
        return false;
    }
    
}

//size
-(int)size{
    return (int)[self.storageList count];
}

//print
-(void)print{
    
    for(int i=0; i<[self.storageList count]-1; i++){
        NSLog(@"%@",[self.storageList objectAtIndex:i]);
    }
    
}

@end
