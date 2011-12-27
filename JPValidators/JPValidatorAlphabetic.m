//
//  JPValidatorAlphabetic.m
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import "JPValidatorAlphabetic.h"

@implementation JPValidatorAlphabetic

- (JPValidationResponse *)validate {
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[a-zA-Z]" options:NSRegularExpressionCaseInsensitive error:&error];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:self.string options:0 range:NSMakeRange(0, [self.string length])];
    
    if (numberOfMatches == [self.string length]) {
        return [JPValidationResponse validationStatus:jpSuccessValidation type:jpValidationIndividual errors:nil];
    }
    else {
        return [JPValidationResponse validationStatus:jpErrorValidation type:jpValidationIndividual errors:[NSArray arrayWithObject:self]];
    }
}

@end
