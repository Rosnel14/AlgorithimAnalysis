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
-(void)insertionSort;

//selection sort algo
-(void)selectionSort;

//merge sort
-(void)mergeSort;

//quick sort
-(void)quickSort;

@end

#endif /* sorter_h */
