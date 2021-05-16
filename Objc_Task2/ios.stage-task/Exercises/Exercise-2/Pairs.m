#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = 0;
    int numberIntValue = [number intValue];
    
    for (int i = 0; i < [array count]; i++) {
        NSNumber *object = [array objectAtIndex:i]; //1 nsnumber
        int objectAtIndexIntValue = [object intValue]; //1 int
        int result = objectAtIndexIntValue - numberIntValue; //1-1 = 0
        NSNumber *resultNS = [NSNumber numberWithInt:result]; //0
         
        for (int j = 0; j < [array count]; j++) {
            if (resultNS == [array objectAtIndex:j]) {
             count ++;
         }
        }
        
        
    }
    
    return count;
}

@end
