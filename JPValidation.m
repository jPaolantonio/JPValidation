//
//  JPValidation.m
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import "JPValidation.h"


@implementation JPValidation

+ (JPValidationResponse *)checkValidation:(JPBaseValidator *)validator {
    JPValidationResponse *validationResponse = [[[JPValidationResponse alloc] init] autorelease];
    validationResponse.type = jpValidationTotal;
    
    if ([validator validate].status == jpSuccessValidation) {
        validationResponse.status = jpSuccessValidation;
    }
    else {
        validationResponse.status = jpErrorValidation;
        validationResponse.errors = [NSArray arrayWithObject:validator];
    }
    
    return validationResponse;
}

+ (JPValidationResponse *)checkValidations:(NSArray *)validations {
    JPValidationResponse *validationResponse = [[[JPValidationResponse alloc] init] autorelease];
    validationResponse.type = jpValidationTotal;
    
    validationResponse.status = jpSuccessValidation;
    
    NSMutableArray *errorsArray = [[NSMutableArray alloc] init];
    for (JPBaseValidator *validator in validations) {
        if ([validator validate].status != jpSuccessValidation) {
            [errorsArray addObject:validator];
            validationResponse.status = jpErrorValidation;
        }
    }
    
    validationResponse.errors = errorsArray;
    [errorsArray release];
    
    return validationResponse;
}

@end
