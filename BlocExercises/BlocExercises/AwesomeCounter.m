//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSInteger lowerNumber = number;
    NSInteger upperNumber = otherNumber;
    
    if (lowerNumber > upperNumber) {
        lowerNumber = otherNumber;
        upperNumber = number;
    }
    
    NSMutableString *counterString = [@"" mutableCopy];
    
    for (NSInteger counter = lowerNumber; counter <= upperNumber; counter++) {
        [counterString appendString:[NSString stringWithFormat:@"%ld", (long)counter]];
    }
    
    return counterString;
}

@end
