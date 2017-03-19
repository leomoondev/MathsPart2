//
//  QuestionManager.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-08.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    if (self = [super init]) {

        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *)timeOutput {
    
    NSTimeInterval totalTime = 0.0;
    
    for (int i = 0; i < _questions.count; i++) {
        
        Question *aQuestion = [_questions objectAtIndex:i];
        
        totalTime = totalTime + aQuestion.answerTime;
    }
    
    NSTimeInterval averageTime = totalTime / self.questions.count;
    
    NSString *timeOutput = [NSString stringWithFormat: @"Total time: %.2fs, average time: %.2fs", totalTime, averageTime];
    
    return timeOutput;
}


@end
