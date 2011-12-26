//
//  JPValidationError.h
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JPValidation.h"

@interface JPValidationStatus : NSObject

@property (strong, nonatomic) NSArray *validationErrors;
@property jpValidationStatus validationStatus;

@end
