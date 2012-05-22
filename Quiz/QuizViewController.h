//
//  QuizViewController.h
//  Quiz
//
//  Created by Raymond T. Hightower on 5/21/12.
//  Copyright (c) 2012 WisdomGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    // Model Objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // View Objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;

}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
