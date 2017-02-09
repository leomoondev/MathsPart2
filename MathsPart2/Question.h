//
//  Question.h
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

- (instancetype) init;

- (NSInteger) answer;

- (NSTimeInterval) answerTime;
- (void) generateQuestion;

@property (nonatomic, retain) NSString* question;
@property (nonatomic, assign) NSInteger answer;

@property (nonatomic) NSInteger firstRandomNumber;
@property (nonatomic) NSInteger secondRandomNumber;

@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;





@end
