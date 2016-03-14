//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Olivia Zhang on 3/13/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *quesionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    // call init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // create two arrays filled with questions and answers
        // and make the pointers point to them
        _questions = @[@"From what is cognac made?",
                      @"What is 7+7?",
                      @"What is the capital of California?"];
        _answers = @[@"Grapes",
                       @"14",
                       @"Sacramento"];
    }
    // return the address of the new object
    return self;
}

- (IBAction) showQuestion:(id)sender
{
    // step to the next question
    self.currentQuestionIndex++;
    
    // am i past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        // go back to the first question
        self.currentQuestionIndex = 0;
    }
    
    // get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // display the string in the question label
    self.quesionLabel.text = question;
    
    // reset the answer label
    self.answerLabel.text = @"???";
}

- (IBAction) showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
    
}

@end
