//
//  JPValidatorEmail.m
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import "JPValidatorEmail.h"

@implementation JPValidatorEmail

- (JPValidationResponse *)validate:(NSString *)string {
    return [JPValidationResponse validationStatus:jpSuccessValidation errors:nil];
}

@end
