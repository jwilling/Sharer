//
//  NSString+Randomization.h
//  Sharer
//
//  Created by Jonathan Willing on 12/23/14.

#import <Foundation/Foundation.h>

@interface NSString (Randomization)

/// Returns a random alphanumeric string with the specified length.
+ (NSString *) shr_randomizedAlphanumericStringOfLength:(NSUInteger) length;

@end
