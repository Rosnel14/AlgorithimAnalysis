//
//  sorter.h
//  AlgoAnalysis
//
//  Created by hackIntosh on 4/21/21.
//

#ifndef sorter_h
#define sorter_h

@interface sorter : NSObject

//constructor
-(instancetype)init;

//insertion sort algo
-(void)insertionSort:(NSMutableArray *)array;

//selection sort algo
-(void)selectionSort:(NSMutableArray *)array;

//merge sort
-(NSArray *)mergeSort:(NSArray *)unsortedArray ;

//quick sort
-(void)quickSort:(NSMutableArray *)array;

@end

#endif /* sorter_h */
