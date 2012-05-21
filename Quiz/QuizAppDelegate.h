//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Raymond T. Hightower on 5/21/12.
//  Copyright (c) 2012 WisdomGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuizViewController;

@interface QuizAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QuizViewController *viewController;

@end
