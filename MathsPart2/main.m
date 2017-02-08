//
//  main.m
//  MathsPart2
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        printf("Maths!\n\n");
        
        // BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper;
        scoreKeeper = [[ScoreKeeper alloc] init];

        while(1) {
            
            AdditionQuestion *additionQuestion;
            additionQuestion = [[AdditionQuestion alloc] init];
            
            
            
            InputHandler *inputHandler;
            inputHandler = [[InputHandler alloc] init];
            NSString *outputString = [inputHandler handleInput];
            NSInteger answerString = [outputString integerValue];
            
            if ([outputString isEqualToString:@"quit"]) {
                break;
            }
            
            if(additionQuestion.answer == answerString) {
                printf("Right!\n");
                [scoreKeeper countRight];
                [scoreKeeper printOutput];
            }
            
            else {
                printf("Wrong!\n");
                [scoreKeeper countWrong];
                [scoreKeeper printOutput];
            }
        }
        
    }
    return 0;
}
