//
//  ViewController.m
//  mathFacts
//
//  Created by Jason Owen on 1/25/16.
//  Copyright © 2016 Jason Owen. All rights reserved.
//
#include <stdlib.h>
#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *firstNumber;
@property (weak, nonatomic) IBOutlet UILabel *secondNumber;

@property (weak, nonatomic) IBOutlet UITextField *userProduct;
@property (weak, nonatomic) IBOutlet UILabel *resultText;
@property (weak, nonatomic) IBOutlet UILabel *scoreText;

@property (weak,nonatomic) NSNumber *userScore;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad successful!\n");
    // update firstNumber, secondNumber to first set of numbers:
    // start wtih firstNumber = 5, secondNumber = 7

    // ...
    // ...

    
    self.firstNumber.text = (@"7");
    self.secondNumber.text = @"8";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldStarted:(UITextField *)sender {
    self.userProduct.keyboardType = UIKeyboardTypeNumberPad;
    NSLog(@"KEYBOARD OPENED...\n");
}





- (IBAction)buttonPressed:(UIButton *)sender {
    NSLog(@"BUTTON PRESS RECEIVED \n\n");
    int r = arc4random_uniform(12); // number in parens is max value of 0 through max value
    NSLog(@"random = %i", r);
    NSString *numToDisplay = [NSString stringWithFormat:@"%d",r];
    self.firstNumber.text = numToDisplay;
    
    int r2 = arc4random_uniform(12);
    NSLog(@"2nd random = %i", r2);
    NSString *secondNumToDisplay = [NSString stringWithFormat:@"%d", r2];
    self.secondNumber.text = secondNumToDisplay;
    
    
    // get value for firstNumber
    // get value for secondNumber
    // calculate actual product
    // compare user's guess with actual product
    // display a result
    // BONUS: keep track of user's score NSNumber userScore
    // replace IBOutlet scoreText with user's score message!
    // BONUS2: replace keyboard with digit keyboard
    // --> SUCCESS!  + 5 POINTS!
    // BONUS3: display bonus image when score = 20
}

@end
