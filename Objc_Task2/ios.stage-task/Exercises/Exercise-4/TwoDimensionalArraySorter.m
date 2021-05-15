#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray *res = [NSMutableArray new];
    
    NSMutableArray<NSNumber *> *nums = [NSMutableArray new];
    NSMutableArray<NSString *> *lines = [NSMutableArray new];
    
    for (int i = 0; i < array.count; i++) {
        if ([array[i] isKindOfClass:NSArray.class]) {
            for (int j = 0; j < array[i].count; j++) {
                if ([ array[i][j] isKindOfClass:NSNumber.class ]) {
                    [ nums addObject:array[i][j] ];
                } else {
                    [ lines addObject:array[i][j] ];
                }
//                [res addObject:array[i][j] ];
            }
        }
    }
    
//    NSLog(@"NUMS :::: %@", nums);
//    NSLog(@"LINES :::: %@", lines);
    
    if (nums.count > 0 && lines.count == 0) {
        NSSortDescriptor *sd = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
        [nums sortUsingDescriptors:@[sd]];
        
        [res addObjectsFromArray:nums];
        
//        NSLog(@"---------------%@", res);
        return res;
    }
    
    if (lines.count > 0 && nums.count == 0) {
        NSSortDescriptor *sd = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
        [lines sortUsingDescriptors:@[sd]];
        
        [res addObjectsFromArray:lines];
//        NSLog(@"---------------%@", res);
        return res;
    }
    
    if (nums.count > 0 && lines.count > 0) {
        NSSortDescriptor *numsSortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
        [nums sortUsingDescriptors:@[numsSortDescriptor]];
        
        NSSortDescriptor *linesSortDesctiptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
        [lines sortUsingDescriptors:@[linesSortDesctiptor]];
        
        [res addObject:nums];
        [res addObject:lines];
//        [res addObjectsFromArray:nums];
//        [res addObjectsFromArray:lines];
//        NSLog(@"---------------%@", res);
        return res;
        
    }
    
//    NSSortDescriptor *sd = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
//    [nums sortUsingDescriptors:@[sd]];
//
//    [res addObjectsFromArray:nums];
    
    
//    NSLog(@"---------------%@", res);
    
    // -------- TEST
    
//    - (void)test5 {
//        NSArray *inputArray = @[@[@4, @6, @2], @[@1, @5, @3], @[@"Ben", @"Alex", @"Cris"], @[@"Desmond", @"Evan"], @[@8, @2, @7, @9]];
//        NSArray *resultArray = @[@[@1, @2, @2, @3, @4, @5, @6, @7, @8, @9], @[@"Evan", @"Desmond", @"Cris", @"Ben", @"Alex"]];
//        BOOL flag = [[self.sorter twoDimensionalSort: inputArray] isEqualToArray: resultArray];
//        XCTAssertTrue(flag);
//
//    }
    
    // -------- TEST
    
    return res;
}

@end
