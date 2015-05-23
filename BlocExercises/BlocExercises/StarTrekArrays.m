//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    NSMutableArray *sortedArray = [characterArray mutableCopy];
    [sortedArray sortUsingDescriptors:@[sortDescriptor]];
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    BOOL foundWorf = NO;
    for (NSString *character in characterArray) {
        NSRange characterRange = [character rangeOfString:@"worf" options:NSCaseInsensitiveSearch];
        if (characterRange.length > 0) {
            foundWorf = YES;
        }
    }
    return foundWorf;
}

@end
