//
//  ScoreKeeper.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void) countRight {
    _right = _right + 1;
    
}

- (void) countWrong {
    _wrong = _wrong + 1;
}

- (void) printOutput {
    float percentage = (100 * (float)_right)/((float)_wrong+(float)_right);
    NSLog(@"Score: %ld correct, %ld wrong ---- %.2f%%", (long)_right, (long)_wrong, percentage);
}
@end
