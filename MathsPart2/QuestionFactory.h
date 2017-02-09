//
//  QuestionFactory.h
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-08.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic, copy) NSArray * questionSubclassNames;

- (instancetype)init;
- (Question *)generateRandomQuestion;

@end
