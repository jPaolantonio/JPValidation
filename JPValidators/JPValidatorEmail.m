//
//  JPValidatorEmail.m
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import "JPValidatorEmail.h"

@implementation JPValidatorEmail

/*- (JPValidationResponse *)validate {
    NSString *emailRegex = @"[a-zA-Z0-9.\\-_]{2,32}@[a-zA-Z0-9.\\-_]{2,32}\.[A-Za-z]{2,4}";
    NSPredicate *regExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    BOOL validEmail = [regExPredicate evaluateWithObject:txtField.text];
    
    if ()
    
    return [JPValidationResponse validationStatus:jpSuccessValidation type:jpValidationIndividual errors:nil];
}*/

- (JPValidationResponse *)validate {
    NSString *emailRegex = @"[a-zA-Z0-9.\\-_]{2,32}@[a-zA-Z0-9.\\-_]{2,32}\.[A-Za-z]{2,4}";
    NSPredicate *regExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    if ([regExPredicate evaluateWithObject:self.string]) {
        return [JPValidationResponse validationStatus:jpSuccessValidation type:jpValidationIndividual errors:nil];
    }
    else {
        return [JPValidationResponse validationStatus:jpErrorValidation type:jpValidationIndividual errors:[NSArray arrayWithObject:self]];
    }
}

@end
