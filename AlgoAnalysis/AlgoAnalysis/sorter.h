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
-(NSArray *)insertionSort:(NSArray *)unsortedArray;

//selection sort algo
-(NSArray *)selectionSort:(NSArray *)unsortedArray;

//merge sort
-(NSArray *)mergeSort:(NSArray *)unsortedArray ;

//quick sort
-(NSArray *)quickSort:(NSArray *)unsortedArray;

@end

#endif /* sorter_h */
