#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger count = 0;
    
    for (int i = 0; i < array.count - 1; i++) {
        for (int j = i + 1; j < array.count; j++) {
            count += [array[j] integerValue] - [array[i] integerValue] == [number integerValue] ? 1 : 0;
        }
    }
    return count;
}

@end
