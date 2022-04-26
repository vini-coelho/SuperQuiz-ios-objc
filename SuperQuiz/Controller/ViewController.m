//
//  ViewController.m
//  SuperQuiz
//
//  Created by Vinicius Coelho on 25/04/22.
//

#import "ViewController.h"
#import "QuizBrain.h"

@interface ViewController ()


@property (nonatomic, weak) IBOutlet UILabel* questionText;
@property (nonatomic, weak) IBOutlet UIProgressView* progressBar;
@property (nonatomic, weak) IBOutlet UILabel* scoreLabel;

-(void) updateView;

@end

@implementation ViewController

QuizBrain *quizBrain;

+ (void)initialize {
    quizBrain = [[QuizBrain alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateView];
    // Do any additional setup after loading the view.
}

- (IBAction)onAnswerPressed:(UIButton *)sender {
    NSString* buttonTitle = sender.currentTitle;
    
    BOOL isCorrect = [quizBrain checkAnswer:buttonTitle];
    
    if (isCorrect) {
        sender.backgroundColor = UIColor.systemGreenColor;
    } else {
        sender.backgroundColor = UIColor.systemRedColor;
    }
    
    NSTimeInterval delayInSeconds = 0.3;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        sender.backgroundColor = UIColor.clearColor;
        [self updateView];
    });
    
    [quizBrain nextQuestion];
}

- (void)updateView {
    _questionText.text = [quizBrain.quiz objectAtIndex:quizBrain.currentQuestion].title;
    _progressBar.progress = [quizBrain getProgress];
    _scoreLabel.text = [NSString stringWithFormat:@"Score: %d", quizBrain.score];
}

@end
