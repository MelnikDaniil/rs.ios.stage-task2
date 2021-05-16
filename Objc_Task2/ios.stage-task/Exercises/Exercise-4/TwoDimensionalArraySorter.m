#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (!array || ![array[0] isKindOfClass:[NSArray class]]) {
           return @[];
       }
    NSMutableArray *numberArray = [NSMutableArray new];
    NSMutableArray *stringArray = [NSMutableArray new];
        
        for (int i = 0; i < [array count]; i++) {
            for (int j = 0; j < [array[i] count]; j++) {
                if ([array[i][j] isKindOfClass:[NSString class]]) {
                    [stringArray addObject: array[i][j]];
                } else {
                    [numberArray addObject:array[i][j]];
                }
                
            }
        }
    
    if ([stringArray count] == 0) {
            [numberArray sortUsingSelector:@selector(compare:)];
            return numberArray;
        }
        
    if ([numberArray count] == 0) {
            [stringArray sortUsingSelector:@selector(compare:)];
            return stringArray;
        }
    //
    [numberArray sortUsingSelector:@selector(compare:)];
    NSSortDescriptor *sd = [[NSSortDescriptor alloc] initWithKey:@"self" ascending:NO];
    [stringArray sortUsingDescriptors:[NSArray arrayWithObject:sd]];
    
    return [[NSArray alloc] initWithObjects:numberArray, stringArray, nil];
}

@end
