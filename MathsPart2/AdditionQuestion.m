//
//  AdditionQuestion.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@implementation AdditionQuestion


- (instancetype)init {
    
    if (self = [super init]) {

        // Generate 2 random numbers between 10 and 100
        _firstRandomNumber = arc4random_uniform(90) + 10;
        _secondRandomNumber = arc4random_uniform(90) + 10;
        
        // Adding the 2 random numbers to get the answer
        _answer = _firstRandomNumber + _secondRandomNumber;
    }
    return self;
}


- (NSString *) generateQuestion {
    // Set the start time with current date
    _startTime = [NSDate date];
    
    // Convert an integer to NSString
    NSString* firstNumberWithString = [NSString stringWithFormat:@"%ld", (long)_firstRandomNumber];
    NSString* secondNumberWithString = [NSString stringWithFormat:@"%ld", (long)_secondRandomNumber];
    
    // Store first and second number in an array to display the question to the user
    NSArray *myStrings = [[NSArray alloc] initWithObjects:firstNumberWithString, secondNumberWithString, nil];
    
    // Add the '+' sign to the part of the question
    NSString *question = [myStrings componentsJoinedByString:@" + "];
    
    
    NSLog(@"%@ ?",question);
    
    return question;
}

- (NSInteger) answer {
    
    _endTime = [NSDate date];
    return _answer;
}


- (NSTimeInterval) answerTime {

    NSDate* date1 = _startTime;
    NSDate* date2 = _endTime;
    NSTimeInterval answerTime = [date2 timeIntervalSinceDate:date1];


    return answerTime;
}
@end
