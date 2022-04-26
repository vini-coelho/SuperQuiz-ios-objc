//
//  QuizBrain.h
//  SuperQuiz
//
//  Created by Vinicius Coelho on 25/04/22.
//

#import <Foundation/Foundation.h>
#import "Quiz.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuizBrain : NSObject

@property NSArray<Quiz*>* quiz;
@property (assign) int currentQuestion;
@property (readwrite) int score;

-(BOOL) checkAnswer: (NSString*) answer;

-(void) nextQuestion;

-(float) getProgress;

@end

NS_ASSUME_NONNULL_END
