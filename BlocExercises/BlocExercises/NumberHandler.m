//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    return [NSNumber numberWithInteger:2*[number integerValue]];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger lowestNumber;
    NSInteger highestNumber;
    NSInteger counter;
    NSMutableArray *arrayOfNumbers;
    
    lowestNumber = number;
    highestNumber = otherNumber;
    if (lowestNumber > highestNumber) {
        lowestNumber = otherNumber;
        highestNumber = number;
    }
    
    arrayOfNumbers = [NSMutableArray new];
    for (counter = lowestNumber; counter <= highestNumber; counter++) {
        [arrayOfNumbers addObject:[NSNumber numberWithInteger:counter]];
    }
    return arrayOfNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSInteger lowestNumber;
    NSNumber *number;
    
    lowestNumber = [arrayOfNumbers[0] integerValue];
    for (number in arrayOfNumbers) {
        if ([number integerValue] < lowestNumber) {
            lowestNumber = [number integerValue];
        }
    }
    return lowestNumber;
}

@end
