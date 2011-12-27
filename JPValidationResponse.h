//
//  JPValidationResponse.h
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    jpSuccessValidation,
    jpErrorValidation
} jpValidationStatus;

typedef enum {
    jpValidationIndividual,
    jpValidationTotal
} jpValidationStatusType;

@interface JPValidationResponse : NSObject

@property (strong, nonatomic) NSArray *errors;
@property jpValidationStatus status;
@property jpValidationStatusType type;

+ (JPValidationResponse *)validationStatus:(jpValidationStatus)s type:(jpValidationStatusType)t errors:(NSArray *)e;

@end
