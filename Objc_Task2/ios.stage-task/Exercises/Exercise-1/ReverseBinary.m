#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    if (n == 0 ) {
        return 0;
    } else {
        unsigned int count = sizeof(n) * 8 - 1; // 7
        unsigned int reverse_num = n; // reverse_num = 1
        
        n >>= 1; // 00000001 -> 00000000
        while (n) {
            reverse_num <<= 1; // 00000010
            reverse_num |= n & 1; // 11111101 ->
            n >>= 1;
            count--;
        }
        reverse_num <<= count;
        return reverse_num;
    }
}
