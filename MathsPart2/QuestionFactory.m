//
//  QuestionFactory.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-08.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory 

- (instancetype)init {
    if (self = [super init]) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion {
    NSString *className = [_questionSubclassNames objectAtIndex:arc4random_uniform(4)];
    
    return [[NSClassFromString(className) alloc]init];;
}
@end
