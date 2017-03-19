//
//  AdditionQuestion.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-08.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    
    if (self = [super init]) {
        
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {

    super.answer = super.rightValue + super.leftValue;

    super.question = [NSString stringWithFormat:@"What is %ld + %ld?", (long)super.rightValue, (long)super.leftValue];
   
    NSLog(@"%@", super.question);
}

@end
