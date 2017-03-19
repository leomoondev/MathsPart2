//
//  QuestionManager.h
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-08.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;

- (id) init;

- (NSString *) timeOutput;

@end
