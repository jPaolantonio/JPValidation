//
//  JPValidatorEmail.m
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import "JPValidatorEmail.h"

@implementation JPValidatorEmail

- (JPValidationResponse *)validate {
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})$" options:NSRegularExpressionCaseInsensitive error:&error];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:self.string options:0 range:NSMakeRange(0, [self.string length])];
    
    if (numberOfMatches == 1) {
        return [JPValidationResponse validationStatus:jpSuccessValidation type:jpValidationIndividual errors:nil];
    }
    else {
        return [JPValidationResponse validationStatus:jpErrorValidation type:jpValidationIndividual errors:[NSArray arrayWithObject:self]];
    }
}

@end
