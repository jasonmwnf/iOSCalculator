//
//  ViewController.m
//  Calculator
//
//  Created by Jason Williams on 2016-01-21.
//  Copyright © 2016 Screaming Goat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonDigit:(id)sender {
    
    currentNumber = currentNumber *10 + (float)[sender tag];
    self.Label.text = [NSString stringWithFormat:@"%2.0f", currentNumber];
    
}

- (IBAction)buttonOperation:(id)sender {
    
    if (currentOperation == 0) result = currentNumber;
    else {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;
                
            default:
                break;
        }
    }
    
    currentNumber = 0;
    self.Label.text = [NSString stringWithFormat:@"%2.0f", result];
    if ([sender tag] == 0) result = 0;
    {
        currentOperation = (int)[sender tag];
    }
    
}

- (IBAction)Cancel:(id)sender {
    
    currentNumber = 0;
    self.Label.text = @"0";
    
}
@end
