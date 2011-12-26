//
//  JPBaseValidator.h
//  Yumm
//
//  Created by James Paolantonio on 12/26/11.
//  Copyright (c) 2011 JDub Studios, llc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JPValidationResponse.h"

@protocol JPValidator <NSObject>

- (JPValidationResponse *)validate;

@end

@interface JPBaseValidator : NSObject <JPValidator>

@property (strong, nonatomic) NSString *string;

@end
