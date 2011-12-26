//
//  JPValidationResponse.m
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import "JPValidationResponse.h"

@implementation JPValidationResponse

@synthesize errors = _errors;
@synthesize status = _status;
@synthesize type = _type;

+ (JPValidationResponse *)validationStatus:(jpValidationStatus)s type:(jpValidationStatusType)t errors:(NSArray *)e {
    JPValidationResponse *validationResponse  = [[[JPValidationResponse alloc] init] autorelease];
    validationResponse.status = s;
    validationResponse.type = t;
    validationResponse.errors = e;
    
    return validationResponse;
}

@end
