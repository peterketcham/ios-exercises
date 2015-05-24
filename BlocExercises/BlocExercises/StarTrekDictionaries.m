//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSString *favoriteDrink;
    favoriteDrink = characterDictionary[@"favorite drink"];
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSDictionary *character;
    NSMutableArray *drinkArray = [NSMutableArray array];
    for (character in charactersArray) {
        [drinkArray addObject:character[@"favorite drink"]];
    }
    return drinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *dictionaryWithQuote;
    dictionaryWithQuote = [characterDictionary mutableCopy];
    [dictionaryWithQuote setObject:@"Get my tea" forKey:@"quote"];
    return dictionaryWithQuote;
}

@end
