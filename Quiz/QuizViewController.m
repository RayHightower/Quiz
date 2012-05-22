//
//  QuizViewController.m
//  Quiz
//
//  Created by Raymond T. Hightower on 5/21/12.
//  Copyright (c) 2012 WisdomGroup. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Create two arrays and make the pointers point ot them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        // Add questions and answers to the arrays
        [questions addObject:@"What is the square root of nine?"];
        [answers addObject:@"3"];
        
        [questions addObject:@"What is the capital of Illinois?"];
        [answers addObject:@"Springfield"];
        
        [questions addObject:@"What is the answer?"];
        [answers addObject:@"42"];
        
    }
    // Return the address of the new object
    return self;
    
}
- (IBAction)showQuestion:(id)sender
{
    // Step to the next question
    currentQuestionIndex++;
    
    // Am I past the last question?
    if (currentQuestionIndex == [questions count]) {
        
        // Go back to the first question
        currentQuestionIndex = 0;
        
    }
    
    // Get the string at that index in teh euqstions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Log the string to the console
    NSLog(@"displaying question: %@", question);
    
    //Display the string in teh question field
    [questionField setText:question];
    
    // Clear the answer field
    [answerField setText:@"???"];
    
}

- (IBAction)showAnswer:(id)sender
{
    // What is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    // Display it in the answer field
    [answerField setText:answer];
}

@end
