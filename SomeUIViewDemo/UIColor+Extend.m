//
//  UIColor+Extend.m
//  SomeUIViewDemo
//
//  Created by student on 10/15/15.
//  Copyright © 2015 student. All rights reserved.
//

#import "UIColor+Extend.h"

@implementation UIColor (Extend)
- (instancetype) initWithHex: (NSString*) hex
                       alpha: (float) alpha {
    
    CGFloat alphalValue = 1;
    if (alpha>=0 && alpha <1) {
        alphalValue = alpha;
    }
    NSString* validHexChars = @"abcdefABCDEF0123456789";
    NSMutableString* filterHex = [[NSMutableString alloc] initWithCapacity:6];
    
    for (int i=0; i<hex.length; i++) {
        unichar charFromInput = [hex characterAtIndex:i];
        NSString* hexChar = [NSString stringWithFormat:@"%c",charFromInput];
        if ([validHexChars rangeOfString:hexChar
                                 options:NSCaseInsensitiveSearch].location!=NSNotFound ) {
            [filterHex appendString:hexChar];
        }
    }
    if (filterHex.length ==6) { //Valid Hex
        unsigned long long colorValue = 0;
        NSScanner *  scanner= [[NSScanner alloc] initWithString:filterHex];
        [scanner scanHexLongLong:&colorValue]; // ampersand
        
        CGFloat red =(CGFloat) ((colorValue & 0xFF0000) >>16)/255.0;
        CGFloat green =(CGFloat) ((colorValue & 0x00FF00) >>8)/255.0;
        CGFloat blue =(CGFloat) (colorValue & 0x0000FF) /255.0;
        return [self initWithRed:red
                           green:green
                            blue:blue
                           alpha:alpha];
    }
    return [self initWithRed:0
                       green:0
                        blue:0
                       alpha:alpha];
    
}

@end
