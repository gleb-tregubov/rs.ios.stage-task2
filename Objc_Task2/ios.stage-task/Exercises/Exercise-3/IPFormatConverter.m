#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (!numbersArray || !numbersArray.count) {
        return @"";
    }
    
    NSMutableString *res = [[NSMutableString alloc] init];
    
    for (int i = 0; i < 4; i++) {
        
        if (i < numbersArray.count) {
            if ([numbersArray[i] integerValue] < 0) {
                return @"Negative numbers are not valid for input.";
            }
            if ([numbersArray[i] integerValue] > 255) {
                return @"The numbers in the input array can be in the range from 0 to 255.";
            }
            [res appendString: [numbersArray[i] stringValue]];
        } else {
            [res appendString: @"0"];
        }
        i != 3 ? [res appendString: @"."] : nil;
        
        
    }
    
    return res;
}

@end
