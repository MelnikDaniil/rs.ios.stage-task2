#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (numbersArray == nil) {
        return @"";
    } else if ([numbersArray  isEqual: @[]]) {
        return @"";
    }
    
    for (int i=0; i < [numbersArray count]; i++) {
        NSNumber *object = [numbersArray objectAtIndex:i];
        int objectAtIndexIntValue = [object intValue];
        if ( objectAtIndexIntValue > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        } else if (objectAtIndexIntValue < 0) {
            return @"Negative numbers are not valid for input.";
        }
    }
    
    NSUInteger countOfThings = [numbersArray count];
    if ( countOfThings == 1) {
        NSString *string = [NSString stringWithFormat:@"%@.0.0.0", [numbersArray objectAtIndex:0]];
        return string;
    } else if ( countOfThings == 2) {
        NSString *string = [NSString stringWithFormat:@"%@.%@.0.0", [numbersArray objectAtIndex:0],[numbersArray objectAtIndex:1]];
        return string;
    } else if ( countOfThings == 3) {
        NSString *string = [NSString stringWithFormat:@"%@.%@.%@.0", [numbersArray objectAtIndex:0],[numbersArray objectAtIndex:1],[numbersArray objectAtIndex:2]];
        return string;
    } else if ( countOfThings >= 4) {
        NSString *string = [NSString stringWithFormat:@"%@.%@.%@.%@", [numbersArray objectAtIndex:0],[numbersArray objectAtIndex:1],[numbersArray objectAtIndex:2],[numbersArray objectAtIndex:3]];
        return string;
    }
    return nil;
}

@end
