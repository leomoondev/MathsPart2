//  main.m
//  MathsPart2
//
//
//  Created by Hyung Jip Moon on 2017-02-07.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        printf("Maths!\n\n");
        
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while(gameOn) {
            
            Question *aQuestion = [[Question alloc] init];
            aQuestion = [questionFactory generateRandomQuestion];

            InputHandler *inputHandler = [[InputHandler alloc] init];
            NSString *outputString = [inputHandler handleInput];
            NSInteger answerString = [outputString integerValue];
        
            [questionManager.questions addObject:aQuestion];
            
            if ([outputString isEqualToString:@"quit"]) {
                NSLog(@"%@", [questionManager timeOutput]);
                break;
            }
            
            if(aQuestion.answer == answerString) {
                printf("Right!\n");
                [scoreKeeper countRight];
                [scoreKeeper printOutput];
                NSLog(@"%@", [questionManager timeOutput]);
            }
            
            else {
                printf("Wrong!\n");
                [scoreKeeper countWrong];
                [scoreKeeper printOutput];
                NSLog(@"%@", [questionManager timeOutput]);
            }
        }
    }
    return 0;
}
