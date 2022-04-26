//
//  Quiz.m
//  SuperQuiz
//
//  Created by Vinicius Coelho on 25/04/22.
//

#import "Quiz.h"

@implementation Quiz

- (instancetype)initWithTitleAndAnswer:(NSString *)title :(NSString *)answer
{
    self = [super init];
    
    if(self) {
        self.title = title;
        self.answer = answer;
    }
    
    return self;
}

@end
