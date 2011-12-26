//
//  JPBaseValidator.m
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import "JPBaseValidator.h"

@implementation JPBaseValidator
@synthesize string = _string;

- (id)init {
    [self doesNotRecognizeSelector:_cmd];
    return nil;
    
}

- (JPValidationResponse *)validate {
    return [JPValidationResponse validationStatus:jpSuccessValidation type:jpValidationIndividual errors:nil];
}

@end
