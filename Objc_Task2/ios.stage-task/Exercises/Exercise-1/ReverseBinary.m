#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 res = 0;
    for (int i = 0; i < 8; i++) {
        res <<= 1;
        if (n & 1) { //n % 2 == 1
            res++;
        }
        n >>= 1;
    }
    return res;
}
