//
//  sorter.m
//  AlgoAnalysis
//
//  Created by hackIntosh on 4/21/21.
//

#import <Foundation/Foundation.h>
#import "sorter.h"

@implementation sorter



-(instancetype)init{
    if (self) {
        self = [super init];
    }
    return self;
}



-(void)insertionSort:(int)arr[] {
    for(int i=1; i < ; i++){
        id current = array[i];
        int j = i -1;
        while(j >= 0 && array[j]>current){
            [array objectAtIndex:j+1] = [array objectAtIndex:j];
            j--;
        }
    }
   
}

-(void)mergeSort {
    
}


@end
