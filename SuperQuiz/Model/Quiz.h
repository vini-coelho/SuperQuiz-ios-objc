//
//  Quiz.h
//  SuperQuiz
//
//  Created by Vinicius Coelho on 25/04/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Quiz : NSObject

@property NSString *title;
@property NSString *answer;

-(instancetype) initWithTitleAndAnswer: (NSString*) title : (NSString*) answer;

@end

NS_ASSUME_NONNULL_END
