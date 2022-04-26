//
//  QuizBrain.m
//  SuperQuiz
//
//  Created by Vinicius Coelho on 25/04/22.
//

#import "QuizBrain.h"
#import "Quiz.h"

@implementation QuizBrain

- (id)init
{
    self = [super init];
    if (self) {
        self.quiz = [[NSArray alloc] initWithObjects:
                     [[Quiz alloc] initWithTitleAndAnswer:@"Teste 1":@"False"],
                     [[Quiz alloc] initWithTitleAndAnswer:@"Teste 2":@"False"],
                     [[Quiz alloc] initWithTitleAndAnswer:@"Teste 3":@"False"],
                     [[Quiz alloc] initWithTitleAndAnswer:@"Teste 4":@"False"],
                     nil];
        self.currentQuestion = 0;
        self.score = 0;
    }
    return self;
}

- (BOOL)checkAnswer:(NSString *)answer {
    if([[self.quiz objectAtIndex:self.currentQuestion].answer isEqual:answer])
    {
        self.score += 1;
        return true;
    } else
        return false;
}

- (void)nextQuestion {
    if (_currentQuestion + 1 < [self.quiz count])
        _currentQuestion += 1;
    else {
        _currentQuestion = 0;
        _score = 0;
    }
}

- (float)getProgress {
    float progress = ((float) (_currentQuestion + 1)) / ((float) self.quiz.count);
    
    return progress;
}

@end
