//
//  MultiplicationQuestion.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-08.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init {
    
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    
    //_startTime = [NSDate date];
    
    super.answer = super.rightValue * super.leftValue;
    
    super.question = [NSString stringWithFormat:@"What is %ld * %ld?", (long)super.rightValue, (long)super.leftValue];
    
    NSLog(@"%@", super.question);
    
}


//- (NSString *) startProgram {
//    // Set the start time with current date
//    _startTime = [NSDate date];
//    
//    // Convert an integer to NSString
//    NSString* firstNumberWithString = [NSString stringWithFormat:@"%ld", (long)_firstRandomNumber];
//    NSString* secondNumberWithString = [NSString stringWithFormat:@"%ld", (long)_secondRandomNumber];
//    
//    // Store first and second number in an array to display the question to the user
//    NSArray *myStrings = [[NSArray alloc] initWithObjects:firstNumberWithString, secondNumberWithString, nil];
//    
//    // Add the '+' sign to the part of the question
//    NSString *question = [myStrings componentsJoinedByString:@" + "];
//    
//    
//    NSLog(@"%@ ?",question);
//    
//    return question;
//}

@end
