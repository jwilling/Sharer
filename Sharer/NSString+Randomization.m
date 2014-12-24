//
//  NSString+Randomization.m
//  Sharer
//
//  Created by Jonathan Willing on 12/23/14.

#import "NSString+Randomization.h"

@implementation NSString (Randomization)

+ (NSString *)shr_randomizedAlphanumericStringOfLength:(NSUInteger)length {
	NSString *alphanumericCharacters = @"123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	NSMutableString *randomString = [NSMutableString stringWithCapacity:length];
	
	for (NSInteger i = 0; i < length; i++) {
		u_int32_t index = arc4random_uniform((u_int32_t)alphanumericCharacters.length);
		[randomString appendFormat:@"%C", [alphanumericCharacters characterAtIndex:index]];
	}
	
	return randomString;
}

@end
