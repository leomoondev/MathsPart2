//
//  Question.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@implementation Question


- (instancetype)init {
    
    if (self = [super init]) {

        // Generate 2 random numbers between 10 and 100
        _firstRandomNumber = arc4random_uniform(90) + 10;
        _secondRandomNumber = arc4random_uniform(90) + 10;
        

        _leftValue = _firstRandomNumber;
        _rightValue = _secondRandomNumber;
        
        _startTime = [NSDate date];

    }
    return self;
}

- (NSInteger) answer {
    
    _endTime = [NSDate date];
    return _answer;
}


- (NSTimeInterval) answerTime {

    NSTimeInterval answerTime = [_endTime timeIntervalSinceDate:_startTime];


    return answerTime;
}

- (void) generateQuestion {
    
    
}
@end
