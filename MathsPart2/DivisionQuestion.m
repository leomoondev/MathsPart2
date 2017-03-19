//
//  DivisionQuestion.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-08.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init {
    
    if (self = [super init]) {
        
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    
    if(super.rightValue > super.leftValue) {
        
        super.answer = super.rightValue / super.leftValue;
        super.question = [NSString stringWithFormat:@"What is %ld / %ld?", (long)super.rightValue, (long)super.leftValue];
    }
    
    else if (super.rightValue < super.leftValue) {
        
        super.answer = super.leftValue / super.rightValue;
        super.question = [NSString stringWithFormat:@"What is %ld / %ld?", (long)super.leftValue, (long)super.rightValue];
    }
    
    else {
        
        super.answer = super.rightValue / super.leftValue;
        super.question = [NSString stringWithFormat:@"What is %ld / %ld?", (long)super.rightValue, (long)super.leftValue];
    }
    
    NSLog(@"%@", super.question);
}

@end
