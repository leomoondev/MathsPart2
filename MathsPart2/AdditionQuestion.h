//
//  AdditionQuestion.h
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

- (instancetype) init;
- (NSInteger) answer;

@property (nonatomic, retain) NSString* question;
@property (nonatomic, assign) NSInteger answer;

@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;


@end
