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
<<<<<<< HEAD
-(void)insertionSort:(int[] arr);

//selection sort algo
-(void)selectionSort:(int *) arr;

//merge sort
-(void)mergeSort:(int *)arr;

//quick sort
-(void)quickSort:(int *)arr;
=======
-(NSMutableArray *)insertionSort:(NSMutableArray *)unsortedArray;

//selection sort algo
-(NSMutableArray *)selectionSort:(NSMutableArray *)unsortedArray;

//merge sort
-(NSArray *)mergeSort:(NSArray *)unsortedArray ;

//quick sort
-(NSArray *)quickSort:(NSArray *)unsortedArray;


>>>>>>> ef5a69d70ba58c8ea097d4d211a5ecadf20c0440

@end

#endif /* sorter_h */
