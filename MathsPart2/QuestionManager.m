//
//  QuestionManager.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-08.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager



- (instancetype)init
{
    self = [super init];
    if (self) {
        // _questions = [NSMutableArray new];
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *)timeOutput {
    
    NSTimeInterval totalTime = 0.0;
    
    for (int i = 0; i < _questions.count; i++) {
        
        AdditionQuestion *additionQuestion = [_questions objectAtIndex:i];
        
        totalTime = totalTime + additionQuestion.answerTime;
    }
    
    NSTimeInterval averageTime = totalTime / self.questions.count;
    
    NSString *timeOutput = [NSString stringWithFormat: @"Total time: %.2f s, average time: %.2f s", totalTime, averageTime];
    
    return timeOutput;
}


@end
