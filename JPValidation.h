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

@class JPBaseValidation;

@interface JPValidation : NSObject

- (void)checkValidation:(JPBaseValidation *)validation;
- (void)checkValidations:(NSArray *)validations;

@end
