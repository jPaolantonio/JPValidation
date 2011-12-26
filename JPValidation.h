//
//  JPValidation.h
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

@class JPValidationResponse, JPBaseValidator;

@interface JPValidation : NSObject

- (JPValidationResponse *)checkValidation:(JPBaseValidator *)validator;
- (JPValidationResponse *)checkValidations:(NSArray *)validations;

@end
